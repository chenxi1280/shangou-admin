package com.lh.shangou.dada.service;


import com.lh.shangou.dada.pojo.entity.merchant.Shop;
import com.lh.shangou.pojo.dto.ResponseDTO;

/**
 * DATE: 18/9/4
 * 门店创建
 *
 * @author: wan
 */
public interface ShopService {
    ResponseDTO addShop(Shop shop);
}
