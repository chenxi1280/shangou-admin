package com.lh.shangou.controller.pages.back.order;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.OrderItem;
import com.lh.shangou.pojo.query.OrderQuery;
import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.OrderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

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

    @RequestMapping("listUserOrders")
    String list(Model model) {
        // key是orders
        model.addAttribute("orders", orderService.findUserOrders(getUserId()));
        return "pages/back/order/order-list";
    }


    @RequestMapping("addOrder")
    @ResponseBody
    ResponseDTO addOrder(@RequestBody OrderVO orderVO) {
        String str = orderVO.getOrderItemsStr();// 取出JSON字符串
        List<OrderItem> orderItems = JSON.parseArray(str, OrderItem.class);
        orderVO.setOrderItems(orderItems);
        orderVO.setUserId(getUserId());
        return orderService.addOrder(orderVO);
    }

    @RequestMapping("showDetailOrder/{orderId}")
    String showDetailOrder(@PathVariable String orderId, Model model) {
        model.addAttribute("od",orderService.getOrderVODetailByOrderId(orderId));
        return "pages/back/order/order-detail";
    }

    @RequestMapping("platOrderList")
    String listBack(Model model) throws IOException {
        return "pages/back/order/order-listBack";
    }

    @RequestMapping("ajaxListOrderBack")
    @ResponseBody
    PageDTO ajaxListOrderBack(OrderQuery query, HttpServletRequest request) {
        return orderService.ajaxListOrderBack(query);
    }

}
