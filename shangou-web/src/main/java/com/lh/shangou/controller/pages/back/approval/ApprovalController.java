package com.lh.shangou.controller.pages.back.approval;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.service.ApprovalService;
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
@RequestMapping("/pages/back/approval")
public class ApprovalController extends BaseController {
    @Resource
    ApprovalService approvalService;
    // 分页商户语句
    @RequestMapping("getMerchantLogsById/{mid}")
    @ResponseBody
    PageDTO getMerchantLogsById(@PathVariable Long mid) {
        return approvalService.getMerchantLogsById(mid);
    }


}
