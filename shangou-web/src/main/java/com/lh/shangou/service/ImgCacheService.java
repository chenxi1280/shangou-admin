package com.lh.shangou.service;

import com.lh.shangou.pojo.entity.ImgCache;
import com.lh.shangou.pojo.entity.Merchant;

import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
public interface ImgCacheService {
    boolean addCache(String s);

    List<ImgCache> getAllImgCache(Date time);

    boolean deleteImgCache(Object obj);// /upload/
}
