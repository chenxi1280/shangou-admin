package com.lh.shangou.dada.pojo.query.deliver;

import lombok.Data;

import java.io.Serializable;

/**
 * creator：lhtjj
 * date: 2020/4/28
 */
@Data
public class DeliverFeeQuery implements Serializable {
    private String shop_no;  //	 门店编号，门店创建后可在门店列表和单页查看
    private String origin_id;   //	是	第三方订单ID
    private String city_code;        //是	订单所在城市的code（查看各城市对应的code值）
    private Double cargo_price;      //	是	订单金额
    private Integer is_prepay = 0;     //	是	是否需要垫付 1:是 0:否 (垫付订单金额，非运费)
    private String receiver_name;    //是	收货人姓名
    private String receiver_address;  //	是	收货人地址
    private String callback;         //是	回调URL（查看回调说明）
    private String receiver_phone;         //是	收货人座机
    private Double receiver_lng;
    private Double receiver_lat;
    private Integer delay_publish_time;// 预约下单时间


}
