package com.lh.shangou.dada.service.impl;

import com.lh.shangou.dada.client.DadaApiResponse;
import com.lh.shangou.dada.client.DadaRequestClient;
import com.lh.shangou.dada.config.UrlConstant;
import com.lh.shangou.dada.pojo.entity.merchant.Shop;
import com.lh.shangou.dada.pojo.query.deliver.DeliverFeeQuery;
import com.lh.shangou.dada.service.DeliverService;
import com.lh.shangou.dada.service.ShopService;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.vo.MerchantVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Service
public class DeliverServiceImpl implements DeliverService {
    @Resource
    DadaRequestClient dadaRequestClient;
    @Resource
    ShopService shopService;

    @Override
    public ResponseDTO getDeliveryFee(DeliverFeeQuery query, Shop shop) {
        DadaApiResponse dadaApiResponse = dadaRequestClient.callRpc(UrlConstant.QUERY_DELIVER_FEE, query);
        if (dadaApiResponse.getCode() == 2004) {// 门店编号无效，那么就需要创建此门店
            shopService.addShop(shop);
            dadaApiResponse = dadaRequestClient.callRpc(UrlConstant.QUERY_DELIVER_FEE, query);
        }
        if ("fail".equals(dadaApiResponse.getStatus())) {
            String msg = dadaApiResponse.getMsg();
            if (2155 == dadaApiResponse.getCode()) {
                msg += "请联系客服:";
            }
            return ResponseDTO.fail(msg, dadaApiResponse.getResult(), dadaApiResponse.getCode(), null);
        } else if ("success".equals(dadaApiResponse.getStatus())) {// 成功
            Map<String, Object> map = new HashMap<>();
            map.put("distance", 152);
            map.put("fee", 0);
            map.put("expiredTime", (int) (System.currentTimeMillis() * 0.001) + 3 * 60);
            map.put("deliveryNo", (int) (System.currentTimeMillis() * 0.001) + 3 * 60);
//            return ResponseDTO.ok(dadaApiResponse.getMsg(),map);// 测试数据
            return ResponseDTO.ok(dadaApiResponse.getMsg(), dadaApiResponse.getResult());
        } else {
            Map<String, Object> map = new HashMap<>();
            map.put("distance", 152);
            map.put("fee", 0);
            map.put("expiredTime", (int) (System.currentTimeMillis() * 0.001) + 3 * 60);
            map.put("deliveryNo", (int) (System.currentTimeMillis() * 0.001) + 3 * 60);
//            return ResponseDTO.ok(dadaApiResponse.getMsg(), dadaApiResponse.getResult());
            return ResponseDTO.ok(dadaApiResponse.getMsg(), map);
            //   return ResponseDTO.fail(dadaApiResponse.getMsg() + dadaApiResponse.getStatus(), dadaApiResponse.getResult(), dadaApiResponse.getCode(), null);
        }

    }
}
