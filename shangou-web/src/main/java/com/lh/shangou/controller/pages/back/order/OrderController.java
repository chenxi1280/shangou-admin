package com.lh.shangou.controller.pages.back.order;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/order")
public class OrderController extends BaseController {


    @Resource
    OrderService orderService;

    @RequestMapping("addPre")
    String addPre() {
        return "pages/back/order/order-add-pre";
    }

    @RequestMapping("getDeliveryFee")
    @ResponseBody
    ResponseDTO getDeliveryFee(Long merchantId, Long addressId, OrderVO orderVO) {
        return orderService.getDeliverFee(merchantId, addressId, orderVO);
    }
}
