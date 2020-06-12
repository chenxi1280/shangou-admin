package com.lh.shangou.controller.pages.back.pay;

import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.math.BigDecimal;

/**
 * creator：杜夫人
 * date: 2020/6/12
 */
@RequestMapping("/pages/back/pay")
@Controller
public class PayController {
    @Resource
    OrderService orderService;


    @RequestMapping("/payPre/{orderId}")
    String payPre(@PathVariable Long orderId, Model model) {
        OrderVO vo=orderService.getOrderVOById(orderId);
        model.addAttribute("order", vo);
        return "/pages/back/pay/payPre";
    }

    @RequestMapping("/unifiedPay")
    String unifiedPay(OrderVO orderVO) {



        orderVO=orderService.getOrderVOById(orderVO.getOrderId());

        return "/pages/back/pay/payPre";
    }


}
