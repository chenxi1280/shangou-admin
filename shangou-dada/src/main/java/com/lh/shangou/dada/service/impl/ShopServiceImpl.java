package com.lh.shangou.dada.service.impl;

import com.lh.shangou.dada.client.DadaApiResponse;
import com.lh.shangou.dada.client.DadaRequestClient;
import com.lh.shangou.dada.pojo.entity.merchant.Shop;
import com.lh.shangou.dada.service.ShopService;
import com.lh.shangou.pojo.dto.ResponseDTO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Service
public class ShopServiceImpl implements ShopService {
    @Resource
    DadaRequestClient dadaRequestClient;

    @Override
    public ResponseDTO addShop(Shop shop) {
        Set<Shop> shops = new HashSet<>();
        shop.setPhone("18223170162");
        shops.add(shop);
        DadaApiResponse dadaApiResponse = dadaRequestClient.callRpc("/api/shop/add", shops);
        System.err.println(dadaApiResponse);
        return ResponseDTO.ok("成g");
    }
}
