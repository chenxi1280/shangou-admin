package com.lh.shangou.service.impl;

import com.lh.shangou.consts.consts.AppConsts;
import com.lh.shangou.dada.pojo.entity.merchant.Shop;
import com.lh.shangou.dada.pojo.query.deliver.DeliverFeeQuery;
import com.lh.shangou.dada.service.DeliverService;
import com.lh.shangou.dao.AddressDao;
import com.lh.shangou.dao.MerchantDao;
import com.lh.shangou.dao.SgOrderDao;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.OrderQuery;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.AddressService;
import com.lh.shangou.service.MerchantService;
import com.lh.shangou.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    DeliverService deliverService;// 引入达达配送服务接口


    @Resource
    SgOrderDao sgOrderDao;

    @Override
    public OrderVO payPre(OrderQuery query) {
        return sgOrderDao.selectByPrimaryK(query.getOrderId());
    }

    @Resource
    MerchantDao merchantDao;

    @Resource
    AddressDao addressDao;

    @Override
    public ResponseDTO getDeliverFee(Long merchantId, Long addressId, OrderVO orderVO) {
        // 查询商户
        MerchantVO m = merchantDao.selectByPK(merchantId);
        Address a = addressDao.selectByPrimaryKey(addressId);
        // 查询地址
        Shop shop = new Shop();
        shop.setOrigin_shop_id(m.getMerchantId().toString());
        shop.setLng(m.getLng());
        shop.setLat(m.getLat());
        shop.setCity_name(m.getPcd().split("-")[1]);
        shop.setArea_name(m.getPcd().split("-")[2]);
        shop.setContact_name(m.getContactName());
        shop.setStation_name(m.getShopName());
        shop.setStation_address(m.getAddress());
        shop.setPhone(m.getTakeawayPhone());

        if (orderVO.getOrderId() != null) {// 这个是来自于立即支付页面，订单信息需要去查询出来
            OrderQuery query = new OrderQuery();
            query.setOrderId(orderVO.getOrderId());
            orderVO = sgOrderDao.selectByPrimaryK(query.getOrderId());
        }
        DeliverFeeQuery deliverFee = new DeliverFeeQuery();
        deliverFee.setCallback(AppConsts.DOM_URL + "/pages/front/deliver/dadaOrderStatus");
        deliverFee.setCity_code(a.getCityCode());
        deliverFee.setCargo_price(orderVO.getActuallyPaid().doubleValue());
        deliverFee.setReceiver_name(a.getReceiver());
        deliverFee.setReceiver_address(a.getName());
        if (orderVO.getOrderId() == null) {
            deliverFee.setOrigin_id(String.valueOf(System.currentTimeMillis()));
        } else {
            deliverFee.setOrigin_id(orderVO.getOrderId().toString());
        }
        deliverFee.setShop_no(m.getMerchantId().toString());
        deliverFee.setReceiver_phone(a.getPhone());
        deliverFee.setReceiver_lng(a.getLng());
        deliverFee.setReceiver_lat(a.getLat());


        return deliverService.getDeliveryFee(deliverFee, shop);
    }
}
