package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.vo.MerchantVO;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
public interface DeliverService {
    ResponseDTO getDeliveryFee(MerchantVO m, Address a);
}
