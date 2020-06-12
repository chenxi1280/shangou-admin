package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.OrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderItemDao {
    int insert(OrderItem record);

    int insertSelective(OrderItem record);

    int inserts(@Param("ids") List<OrderItem> orderItems);
}
