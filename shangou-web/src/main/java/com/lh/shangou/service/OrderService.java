package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.query.OrderQuery;
import com.lh.shangou.pojo.vo.OrderVO;
import org.springframework.transaction.annotation.Transactional;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
public interface OrderService {
    OrderVO payPre(OrderQuery query);

    ResponseDTO getDeliverFee(Long merchantId, Long addressId, OrderVO orderVO);
// 插入订单之后要插入订单详情

    @Transactional
    ResponseDTO addOrder(OrderVO orderVO);

    OrderVO getOrderVOById(Long orderId);
}
