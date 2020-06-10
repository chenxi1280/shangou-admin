package com.lh.shangou.pojo.query;

import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Data
public class MerchantQuery extends PageQuery {

    private Long userId, merchantId;// 用户id或者是商户号
    private String shopName;//  店铺名称模糊查询
    private String phone;   //  手机号模糊
    private String contactName;   //  联系人模糊查询
    private String address;   //  地址模糊
    private String approvalStatus;   //  审核状态：等值查询
    private Boolean isOpen;   //  营业状态：等值查询
    private Boolean isPlatSend;   //  平台配送状态：等值查询
    private Double maxLng, maxLat, minLng, minLat;// 最小最大经纬度


}
