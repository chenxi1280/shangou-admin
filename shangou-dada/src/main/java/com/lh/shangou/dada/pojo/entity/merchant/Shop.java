package com.lh.shangou.dada.pojo.entity.merchant;

import lombok.Data;

import java.io.Serializable;

/**
 * DATE: 18/9/2
 *
 * @author: wan
 */
@Data
public class Shop implements Serializable {

    private String origin_shop_id;// 这里其实是门店id

    private String station_name; // 门店名称

    private Integer business = 5;// 业务类型id

    private String city_name;//城市名称

    private String area_name;// 区域名称

    private String station_address;//门店地址

    private Double lng;//经度

    private Double lat;// 纬度

    private String contact_name ; // 联系人姓名

    private String phone ;// 电话

}
