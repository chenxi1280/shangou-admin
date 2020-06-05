package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.Goods;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.vo.GoodsVO;

import java.util.List;

public interface GoodsDao {
    int deleteByPrimaryKey(Long goodsId);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Long goodsId);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<GoodsVO> ajaxList(GoodsQuery query);

    Integer ajaxListCount(GoodsQuery query);
}
