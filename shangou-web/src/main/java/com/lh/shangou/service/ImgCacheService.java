package com.lh.shangou.service;

import com.lh.shangou.pojo.entity.ImgCache;
import com.lh.shangou.pojo.entity.Merchant;

import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
public interface ImgCacheService extends BaseService {
    boolean addCache(String s);

    List<ImgCache> getAllImgCache(Date time);

    // 删除缓存图片
    boolean deleteImgCache(Object obj);// /upload/
}
