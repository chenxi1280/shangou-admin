package com.lh.shangou.controller.pages.back.pay;

import com.alibaba.fastjson.JSONObject;
import com.lh.shangou.pay.pojo.entity.Order;
import com.lh.shangou.pay.service.AliPayService;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
    @Resource
    AliPayService aliPayService;

    @RequestMapping("/payPre/{orderId}")
    String payPre(@PathVariable Long orderId, Model model) {
        OrderVO vo = orderService.getOrderVOById(orderId);
        model.addAttribute("order", vo);
        return "/pages/back/pay/payPre";
    }

    @RequestMapping("/unifiedPay")
    String unifiedPay(OrderVO orderVO, HttpServletRequest request) throws Exception {
        Order od = new Order();
        od.setPayType(orderVO.getPayType());
        orderVO = orderService.getOrderVOById(orderVO.getOrderId());
        od.setActuallyPaid(orderVO.getActuallyPaid());
        od.setCreateTime(orderVO.getCreateTime());
        od.setSubject("闪购-收银台");
        od.setOrderId(orderVO.getOrderId());
        if ("支付宝".equals(od.getPayType())) {
            ResponseDTO responseDTO = aliPayService.unifiedPay(od);
            request.setAttribute("form", responseDTO.getObject(String.class));
            return "forward:/pages/back/pay/aliPay";
        } else if ("微信".equals(od.getPayType())) {// 微信支付


        }
        return "/pages/back/pay/payPre";
    }

    @RequestMapping("/aliPay")
    @ResponseBody
    String aliPay(HttpServletRequest request) {
        return (String) request.getAttribute("form");
    }
}
