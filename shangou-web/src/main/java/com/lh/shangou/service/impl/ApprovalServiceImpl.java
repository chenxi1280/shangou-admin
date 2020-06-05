package com.lh.shangou.service.impl;

import com.lh.shangou.dao.ApprovalLogDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import com.lh.shangou.pojo.vo.ApprovalLogVO;
import com.lh.shangou.service.ApprovalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Service
public class ApprovalServiceImpl implements ApprovalService {
    @Resource
    ApprovalLogDao approvalLogDao;

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
}
