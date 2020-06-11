package com.lh.shangou.controller.pages.front.deliver;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.service.BusinessTypeService;
import com.lh.shangou.service.MerchantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/front/deliver")
public class DeliverControllerFront extends BaseController {
    @Resource
    BusinessTypeService businessTypeService;
    @Resource
    MerchantService merchantService;

    // 首页获取附近商户的商品
    @RequestMapping("dadaOrderStatus")
    @ResponseBody
    Object dadaOrderStatus() {// 接收达达的订单状态的通知

        return "";
    }


}
