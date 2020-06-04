package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.ImgCache;

import java.util.Date;
import java.util.List;

public interface ImgCacheDao {
    int deleteByPrimaryKey(String imgUrl);

    int insert(ImgCache record);

    int insertSelective(ImgCache record);

    ImgCache selectByPrimaryKey(String imgUrl);

    int updateByPrimaryKeySelective(ImgCache record);

    int updateByPrimaryKey(ImgCache record);

    List<ImgCache> getAllImgCache(Date time);
}
