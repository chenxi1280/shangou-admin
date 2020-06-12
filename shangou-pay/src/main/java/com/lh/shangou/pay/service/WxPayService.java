package com.lh.shangou.pay.service;

import com.lh.shangou.pay.pojo.entity.Order;
import com.lh.shangou.pojo.dto.ResponseDTO;

/**
 * creator：杜夫人
 * date: 2020/6/12
 */
public interface WxPayService {
    ResponseDTO unifiedPay(Order od) throws Exception;
}
