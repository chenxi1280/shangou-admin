package com.lh.shangou.controller.pages.back.merchant;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.BusinessType;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.query.RoleQuery;
import com.lh.shangou.service.BusinessTypeService;
import com.lh.shangou.service.MerchantService;
import com.lh.shangou.service.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/merchant")
public class MerchantController extends BaseController {
    @Resource
    BusinessTypeService businessTypeService;

    @Resource
    MerchantService merchantService;


    @RequestMapping("approvalStatus")
    String approvalStatus(Model model) {// 在这里就应该判断以下当前用户是不是已经入驻了申请了
        return "pages/back/merchant/merchant-approvalStatus";
    }

    @RequestMapping("addPre")
    String addPre(Model model) {// 在这里就应该判断以下当前用户是不是已经入驻了申请了
        model.addAttribute("types", businessTypeService.getTypes());
        return "pages/back/merchant/merchant-addPre";
    }

    @RequestMapping("add")
    @ResponseBody
    ResponseDTO add(Merchant merchant) {
        // 获取用户的id和手机号，从session里边
        merchant.setPhone(getPhone());
        merchant.setUserId(getUserId());

        return merchantService.add(merchant);
    }

}
