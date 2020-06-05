package com.lh.shangou.service.impl;

import com.lh.shangou.dao.ApprovalLogDao;
import com.lh.shangou.dao.MerchantDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import com.lh.shangou.pojo.vo.ApprovalLogVO;
import com.lh.shangou.service.ApprovalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Service
public class ApprovalServiceImpl implements ApprovalService {
    @Resource
    ApprovalLogDao approvalLogDao;
    @Resource
    MerchantDao merchantDao;

    @Override
    public PageDTO getMerchantLogsById(Long mid) {
        List<ApprovalLogVO> list = approvalLogDao.getMerchantLogsById(mid);
        return PageDTO.setPageData(list.size(), list);
    }

    @Override
    public PageDTO getMerchantLogsByQuery(ApprovalLogQuery query) {
        List<ApprovalLogVO> list = approvalLogDao.getMerchantLogsByQuery(query);
        Integer count = approvalLogDao.getMerchantLogsByQueryCount(query);
        return PageDTO.setPageData(count, list);
    }

    @Override
    public ResponseDTO addApprovalLog(ApprovalLog log) {
        log.setCreateTime(new Date());
        if (approvalLogDao.insertSelective(log) == 1) {// 如果插入日志成功，那么应该根据merchantId将审核的结果修改
            Merchant m = new Merchant();
            m.setMerchantId(log.getMerchantId());
            m.setApprovalStatus(log.getRes());
            return ResponseDTO.get(merchantDao.updateByPrimaryKeySelective(m) == 1);
        }
        return ResponseDTO.fail("审核失败，请联系管理员");
    }
}
