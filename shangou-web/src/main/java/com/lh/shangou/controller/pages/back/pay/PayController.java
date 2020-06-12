package com.lh.shangou.controller.pages.back.pay;

import com.alibaba.fastjson.JSONObject;
import com.lh.shangou.pay.pojo.entity.Order;
import com.lh.shangou.pay.service.AliPayService;
import com.lh.shangou.pay.service.WxPayService;
import com.lh.shangou.pay.util.DeviceUtil;
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
import java.util.Collection;
import java.util.Map;

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
    @Resource
    WxPayService wxPayService;

    @RequestMapping("/payPre/{orderId}")
    String payPre(@PathVariable Long orderId, Model model) {
        OrderVO vo = orderService.getOrderVOById(orderId);
        model.addAttribute("order", vo);
        return "/pages/back/pay/payPre";
    }

    @RequestMapping("/unifiedPay")
    String unifiedPay(OrderVO orderVO, HttpServletRequest request, Model model) throws Exception {
        Order od = new Order();
        od.setPayType(orderVO.getPayType());
        orderVO = orderService.getOrderVOById(orderVO.getOrderId());
        od.setActuallyPaid(orderVO.getActuallyPaid().add(orderVO.getDeliveryFee()));
        od.setCreateTime(orderVO.getCreateTime());
        od.setSubject("闪购-收银台");// 设置一个描述
        od.setOrderId(orderVO.getOrderId());
        od.setActuallyPaid(new BigDecimal("0.01"));
        if ("支付宝".equals(od.getPayType())) {
            ResponseDTO responseDTO = aliPayService.unifiedPay(od);
            // 由于微信付款是返回微信的二维码地址,所以这里为了照顾微信,我们不能用@ResponseBody
            request.setAttribute("form", responseDTO.getObject(String.class));
            return "forward:/pages/back/pay/aliPay";
        } else if ("微信".equals(od.getPayType())) {// 微信支付,
            ResponseDTO responseDTO = wxPayService.unifiedPay(od);
            // 如果是手机,直接重定向到地址
            if (DeviceUtil.isMobile()) {// 手机
                return "redirect:" + responseDTO.getObject(String.class);
            } else {
                model.addAllAttributes((Map<String, ?>) responseDTO.getData());
                return "/pages/back/pay/wx-saomaPay";
            }
            // 如果是电脑,那么就跳转到微信扫码付款页面去
        } else {// 闪购支付

        }
        return "/pages/back/pay/payPre";
    }


    @RequestMapping("/aliPay")
    @ResponseBody
    String aliPay(HttpServletRequest request) {
        return (String) request.getAttribute("form");
    }
}
