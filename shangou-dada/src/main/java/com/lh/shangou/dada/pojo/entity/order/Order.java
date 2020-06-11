package com.lh.shangou.dada.pojo.entity.order;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.math.BigDecimal;

/**
 * DATE: 18/9/2
 *
 * @author: wan
 */
@Data
public class Order {

    private String shop_no;

    private String origin_id;

    private String city_code;

    private BigDecimal cargo_price;

    private Integer is_prepay;

    private String receiver_name;

    private String receiver_address;

    private BigDecimal receiver_lat;

    private BigDecimal receiver_lng;

    private String callback;

    private String receiver_phone;

}
