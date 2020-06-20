package com.lh.shangou.controller.pages.back.approval;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import com.lh.shangou.service.ApprovalService;
import org.springframework.stereotype.Controller;
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
    @RequestMapping("getMerchantLogsById/{merchantId}")
    @ResponseBody
    PageDTO getMerchantLogsById(ApprovalLogQuery query) {
        return approvalService.getMerchantLogsByQuery(query);
    }

    @RequestMapping("addApprovalLog")
    @ResponseBody
    ResponseDTO addApprovalLog(ApprovalLog log) {
        log.setApprovalUserId(getUserId());// 设置审核人
        log.setApprovalUserName(getSession().getAttribute("realName").toString());// 设置审核人的名字
        return approvalService.addApprovalLog(log);
    }


}
