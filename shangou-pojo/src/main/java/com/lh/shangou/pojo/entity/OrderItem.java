package com.lh.shangou.pojo.entity;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * order_item
 *
 * @author
 */
@Data
public class OrderItem implements Serializable {
    /**
     * 订单id
     */
    private Long orderId;

    /**
     * 下单时候的商品图片地址
     */
    private String goodsImg;// pic

    /**
     * 下单时候的商品数量
     */
    private String goodsCount; // count

    /**
     * 原来的商品id
     */
    private Long originGoodsId;// goodsId

    /**
     * 下单时候的商品名称
     */
    private String goodsTitle; // 商品的title

    /**
     * 下单时候的价格
     */
    private BigDecimal goodsPrice;// 指的商品中的nowPrice

    /**
     * 商户id:冗余字段：是专门拿来给程序查询用的
     */
    private Long merchantId;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 用户id
     */
    private Long userId;

    private static final long serialVersionUID = 1L;
}
