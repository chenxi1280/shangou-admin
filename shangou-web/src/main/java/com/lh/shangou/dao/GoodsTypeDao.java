package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.GoodsType;

public interface GoodsTypeDao {
    int deleteByPrimaryKey(Long goodsTypeId);

    int insert(GoodsType record);

    int insertSelective(GoodsType record);

    GoodsType selectByPrimaryKey(Long goodsTypeId);

    int updateByPrimaryKeySelective(GoodsType record);

    int updateByPrimaryKey(GoodsType record);
}