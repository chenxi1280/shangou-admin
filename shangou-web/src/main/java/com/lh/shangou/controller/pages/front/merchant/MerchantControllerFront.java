package com.lh.shangou.controller.pages.front.merchant;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.service.BusinessTypeService;
import com.lh.shangou.service.MerchantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/front/merchant")
public class MerchantControllerFront extends BaseController {
    @Resource
    BusinessTypeService businessTypeService;
    @Resource
    MerchantService merchantService;

    // 首页获取附近商户的商品
    @RequestMapping("getNearbyMerchantsGoods")
    @ResponseBody
    PageDTO getNearbyMerchantsGoods(MerchantQuery query) {
        if (query.getMaxLat() == null
                || query.getMaxLng() == null
                || query.getMinLat() == null
                || query.getMinLng() == null) {// 只要有一个是null，直接不查
            return PageDTO.setPageData(0, null);
        }
        return merchantService.ajaxList(query);
    }
}
