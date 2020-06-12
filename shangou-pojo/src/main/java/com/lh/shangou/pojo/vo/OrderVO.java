package com.lh.shangou.pojo.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.lh.shangou.pojo.entity.OrderItem;
import com.lh.shangou.pojo.entity.SgOrder;
import lombok.Data;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)// 把null忽略
public class OrderVO extends SgOrder {

    private List<OrderItem> orderItems;

    private String orderItemsStr;// 订单详情的JSON字符串

}
