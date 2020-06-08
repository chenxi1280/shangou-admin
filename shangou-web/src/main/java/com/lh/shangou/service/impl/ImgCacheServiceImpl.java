package com.lh.shangou.service.impl;

import com.lh.shangou.dao.ImgCacheDao;
import com.lh.shangou.pojo.entity.ImgCache;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.service.ImgCacheService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
@Service
public class ImgCacheServiceImpl implements ImgCacheService {
    @Resource
    ImgCacheDao imgCacheDao;

    @Override
    public boolean addCache(String s) {
        ImgCache imgCache = new ImgCache();
        imgCache.setImgUrl(s);
        imgCache.setCreateTime(new Date());
        return imgCacheDao.insert(imgCache) == 1;
    }

    @Override
    public List<ImgCache> getAllImgCache(Date time) {
        return imgCacheDao.getAllImgCache(time);

    }

    @Override
    public boolean deleteImgCache(Object obj) {
        Class cls = obj.getClass();// 获取反射类对象
        Field[] declaredFields = cls.getDeclaredFields();// 拿到本类 的所有成员
        for (Field f : declaredFields) {
            if (f.getType().isAssignableFrom(String.class)) {// 如果当前成员是String这个类，那么我就把值取出来
                f.setAccessible(true);// 暴力解封
                String value = null;// 可以强制转换不会错
                try {
                    value = (String) f.get(obj);// 获取成员的值
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
                if (!StringUtils.isEmpty(value)) {// 不是空，就判断是否是/upload/开头的，如果是，就认为是图片。就去缓存里边删缓存
                    if (value.contains("<img")) {// 这样判断这个是富文本
                        List<String> imgStrToList = getImgStrToList(value);// 从文本提取图片地址
                        for (String s : imgStrToList) {
                            if (s.startsWith("/upload/")) {// 就是图片
                                imgCacheDao.deleteByPrimaryKey(s);
                            }
                        }
                    }
                    if (value.startsWith("/upload/")) {// 就是图片
                        String[] split = value.split(",");
                        for (String s : split) {
                            imgCacheDao.deleteByPrimaryKey(s);
                        }
                    }
                }
            }
        }
        return true;
    }

}
