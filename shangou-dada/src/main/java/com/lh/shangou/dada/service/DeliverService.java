package com.lh.shangou.dada.service;

import com.lh.shangou.dada.pojo.entity.merchant.Shop;
import com.lh.shangou.dada.pojo.query.deliver.DeliverFeeQuery;
import com.lh.shangou.pojo.dto.ResponseDTO;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
public interface DeliverService {
    ResponseDTO getDeliveryFee(DeliverFeeQuery query, Shop shop);
}
