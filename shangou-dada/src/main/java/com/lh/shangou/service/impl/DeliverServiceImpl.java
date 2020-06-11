package com.lh.shangou.service.impl;

import com.lh.shangou.dada.config.UrlConstant;
import com.lh.shangou.dada.utils.DadaClient;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.service.DeliverService;
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
    DadaClient dadaClient;

    @Override
    public ResponseDTO getDeliveryFee(MerchantVO m, Address a) {

        // 这里就是开调用达达的那一套
//        shop_no	String	是	门店编号，门店创建后可在门店列表和单页查看
//        origin_id	String	是	第三方订单ID
//        city_code	String	是	订单所在城市的code（查看各城市对应的code值）
//        cargo_price	Double	是	订单金额
//        is_prepay	Integer	是	是否需要垫付 1:是 0:否 (垫付订单金额，非运费)
//        receiver_name	String	是	收货人姓名
//        receiver_address	String	是	收货人地址
//        callback	String	是	回调URL（查看回调说明）
//        receiver_lat	Double	否	收货人地址纬度（高德坐标系，若是其他地图经纬度需要转化成高德地图经纬度，高德地图坐标拾取器）
//        receiver_lng	Double	否	收货人地址经度（高德坐标系，若是其他地图经纬度需要转化成高德地图经纬度，高德地图坐标拾取器)
//        receiver_phone	String	否	收货人手机号（手机号和座机号必填一项）
        // 封装查询参数
        Map<String,String> pMap=new HashMap<>();
        pMap.put("shop_no",m.getMerchantId().toString());
        dadaClient.request(UrlConstant.ORDER_ADD_URL,pMap);
        return null;
    }
}
