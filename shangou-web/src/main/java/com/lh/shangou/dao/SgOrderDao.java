package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.SgOrder;
import com.lh.shangou.pojo.vo.OrderVO;

public interface SgOrderDao {
    int deleteByPrimaryKey(Long orderId);

    int insert(SgOrder record);

    int insertSelective(SgOrder record);

    SgOrder selectByPrimaryKey(Long orderId);

    int updateByPrimaryKeySelective(SgOrder record);

    int updateByPrimaryKey(SgOrder record);

    OrderVO selectByPrimaryK(Long orderId);

    int insertVOSelective(OrderVO orderVO);
}
