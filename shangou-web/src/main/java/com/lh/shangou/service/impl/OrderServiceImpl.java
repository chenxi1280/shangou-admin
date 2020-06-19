package com.lh.shangou.service.impl;

import com.lh.shangou.consts.consts.AppConsts;
import com.lh.shangou.dada.pojo.entity.merchant.Shop;
import com.lh.shangou.dada.pojo.query.deliver.DeliverFeeQuery;
import com.lh.shangou.dada.service.DeliverService;
import com.lh.shangou.dao.AddressDao;
import com.lh.shangou.dao.MerchantDao;
import com.lh.shangou.dao.OrderItemDao;
import com.lh.shangou.dao.SgOrderDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.entity.OrderItem;
import com.lh.shangou.pojo.entity.SgOrder;
import com.lh.shangou.pojo.query.OrderQuery;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.pojo.vo.OrderItemVO;
import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.AddressService;
import com.lh.shangou.service.MerchantService;
import com.lh.shangou.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Service
public class OrderServiceImpl implements OrderService {
    Logger logger = LoggerFactory.getLogger(GoodsVO.class);

    @Resource
    DeliverService deliverService;// 引入达达配送服务接口


    @Resource
    SgOrderDao sgOrderDao;

    @Resource
    OrderItemDao orderItemDao;

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

    @Override
    public ResponseDTO addOrder(OrderVO orderVO) {
        Date now = new Date();
        orderVO.setCreateTime(now);
        orderVO.setPayStatus("待付款");

        int x = sgOrderDao.insertVOSelective(orderVO);

        if (x == 1) {
            List<OrderItem> orderItems = orderVO.getOrderItems();
            for (OrderItem item : orderItems) {
                item.setOrderId(orderVO.getOrderId());
                item.setCreateTime(now);
            }
            // 第一种：直接for循环插入数据，但是这么搞不是mybatis的批处理
            if (!CollectionUtils.isEmpty(orderItems)) {// 如果你们以后工作中有任这么写，强烈建议单词不要超过一千个循环
                int y = orderItemDao.inserts(orderItems);
                if (y == orderItems.size()) {
                    //
                    OrderVO orderVO1 = new OrderVO();
                    orderVO1.setOrderId(orderVO.getOrderId());
                    return ResponseDTO.ok("下单成功", orderVO1);// 但是会造成
                }
            }
            // 第二种：mybatis的foreach(这种方式，性能略高，在执行插入数据的时候，其实for循环插入和批量插入，性能影响不是很大)

        }
        return ResponseDTO.fail("下单失败");
    }

    @Override
    public OrderVO getOrderVOById(Long orderId) {

        return sgOrderDao.selectByPrimaryK(orderId);
    }

    @Override
    public List<OrderVO> findUserOrders(Long userId) {

        List<OrderVO> marketOrders = sgOrderDao.findUserOrders(userId);

        if (!CollectionUtils.isEmpty(marketOrders)) {
            // 根据订单查询它的订单信息
            List<OrderItemVO> orderInfoVOS = orderItemDao.findOrderInfoByOrderId(marketOrders);
            Map<Long, List<OrderItemVO>> collect = orderInfoVOS.stream().collect(Collectors.groupingBy(OrderItemVO::getOrderId));
            // 继续查询商家信息
            List<Merchant> merchantVOS = merchantDao.getByObjects(marketOrders);
            Map<Long, List<Merchant>> collect1 = merchantVOS.stream().collect(Collectors.groupingBy(Merchant::getMerchantId));
            Map<Long, List<OrderItemVO>> collect2 = orderInfoVOS.stream().collect(Collectors.groupingBy(OrderItemVO::getOrderId));
            long now = System.currentTimeMillis();
            SgOrder updateOrder = new SgOrder();
            for (OrderVO m : marketOrders) {
                List<Merchant> merchants = collect1.get(m.getMerchantId());
                if (!CollectionUtils.isEmpty(merchants)) {// 有商家
                    m.setMerchant(merchants.get(0));
                }
                List<OrderItemVO> orderInfoVOS1 = collect2.get(m.getOrderId());
                m.setOrderItemVOs(orderInfoVOS1);

                // 此处简化开发，利用查询的时候将支付超时的订单设置为已取消，
                // 实际项目之中应该使用RabbitMQ的延时队列和死信队列，发送延时消息，或者用redis实现延时队列

                // 先获取订单创建时间和支付状态，如果支付状态是待付款，并且创建时间已经离现在超过三十分钟，就把订单设置为已取消
                if ("待付款".equals(m.getPayStatus())) {
                    long createTime = m.getCreateTime().getTime();
                    if (now - createTime > 30 * 60 * 1000) { // 已经过了三十分钟
                        updateOrder.setOrderId(m.getOrderId());
                        updateOrder.setPayStatus("已取消");
                        if (sgOrderDao.updateOrderStatus(updateOrder) != 1) {
                            logger.error("更新订单状态为已取消时候产生了异常，请排查问题！");
                        }
                    }
                }
            }
            return marketOrders;
        }
        return null;
    }

    @Override
    public OrderVO getOrderVODetailByOrderId(String orderId) {

        OrderVO marketOrder = sgOrderDao.selectByPrimaryKeyVO(orderId);
        Merchant merchant = merchantDao.selectByPrimaryKey(marketOrder.getMerchantId());
        marketOrder.setMerchant(merchant);
        List<OrderItemVO> orderInfoByOrderId = orderItemDao.findOrderInfoByOrderId(Collections.singletonList(marketOrder));
        marketOrder.setOrderItemVOs(orderInfoByOrderId);
        return marketOrder;
    }

    @Override
    public PageDTO ajaxListOrderBack(OrderQuery query) {
        List<OrderVO> marketOrderVOS = sgOrderDao.ajaxListOrderBack(query);

        BigDecimal allCost = new BigDecimal(0);

        if (!CollectionUtils.isEmpty(marketOrderVOS)) {
            List<OrderItemVO> orderInfoByOrderId = orderItemDao.findOrderInfoByOrderId(marketOrderVOS);
            Map<Long, List<OrderItemVO>> collect = orderInfoByOrderId.stream().collect(Collectors.groupingBy(OrderItemVO::getOrderId));

            for (OrderVO m : marketOrderVOS) {
                m.setOrderItemVOs(collect.get(m.getOrderId()));
                allCost = allCost.add(m.getActuallyPaid());// 收集本次查询的总收款
            }
        }
        Integer count = sgOrderDao.ajaxListOrderBackCount(query);
        return PageDTO.setPageData(count, marketOrderVOS, allCost);
    }
}
