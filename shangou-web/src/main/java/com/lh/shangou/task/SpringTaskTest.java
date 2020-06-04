package com.lh.shangou.task;

import com.lh.shangou.config.webmvc.WebMvcConfig;
import com.lh.shangou.dao.ImgCacheDao;
import com.lh.shangou.pojo.entity.ImgCache;
import com.lh.shangou.service.ImgCacheService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


/**
 * creator：杜夫人
 * date: 2020/5/26
 */
@Component
public class SpringTaskTest {
    Logger logger = LoggerFactory.getLogger(SpringTaskTest.class);

    @Resource
    ImgCacheService imgCacheService;
    @Resource
    ImgCacheDao imgCacheDao;

    // 每一个小时就定时清空图片的缓存
    @Scheduled(fixedDelay = 60 * 60 * 1000)
    public void clearImgCache() {// 定时清空图片缓存
        Calendar instance = Calendar.getInstance();
        instance.add(Calendar.HOUR, -1);// 这样就拿到了一个小时之前的这个时间
        Date time = instance.getTime();
        List<ImgCache> imgCacheList = imgCacheService.getAllImgCache(time);
        for (ImgCache imgCache : imgCacheList) {
            boolean b = WebMvcConfig.deleteFile(imgCache.getImgUrl());// 这里执行的是定时删除磁盘中的文件
            logger.info("定时删除图片：" + imgCache.getImgUrl() + "结果：" + b);
            // 删除之后，不管成功与否，都要把数据库里边的图片删除，避免下次再查询出来再删除
            imgCacheDao.deleteByPrimaryKey(imgCache.getImgUrl());
        }
    }
}
