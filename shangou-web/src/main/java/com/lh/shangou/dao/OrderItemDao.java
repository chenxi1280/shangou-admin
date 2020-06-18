package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.OrderItem;
import com.lh.shangou.pojo.vo.OrderItemVO;
import com.lh.shangou.pojo.vo.OrderVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderItemDao {
    int insert(OrderItem record);

    int insertSelective(OrderItem record);

    int inserts(@Param("ids") List<OrderItem> orderItems);

    List<OrderItemVO> findOrderInfoByOrderId(@Param("ids") List<OrderVO> marketOrders);
}
