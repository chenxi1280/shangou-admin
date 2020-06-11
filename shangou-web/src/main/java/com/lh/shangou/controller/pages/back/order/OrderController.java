package com.lh.shangou.controller.pages.back.order;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.entity.GoodsType;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.GoodsTypeQuery;
import com.lh.shangou.pojo.vo.AddressVO;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.service.AddressService;
import com.lh.shangou.service.DeliverService;
import com.lh.shangou.service.GoodsTypeService;
import com.lh.shangou.service.MerchantService;
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
    DeliverService deliverService;

    @Resource
    MerchantService merchantService;


    @Resource
    AddressService addressService;

    @RequestMapping("addPre")
    String addPre() {
        return "pages/back/order/order-add-pre";
    }

    @RequestMapping("getDeliveryFee")
    @ResponseBody
    ResponseDTO getDeliveryFee(Long merchantId, Long addressId) {
        // 查询商户
        MerchantVO m = merchantService.selectMerchantBaseInfoById(merchantId);
        Address a = addressService.selectAddressById(addressId);
        // 查询地址
        return deliverService.getDeliveryFee(m, a);
    }


}
