package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */

public interface ApprovalService {
    PageDTO getMerchantLogsById(Long mid);

    PageDTO getMerchantLogsByQuery(ApprovalLogQuery query);

    @Transactional // 第一次看到事务控制
    ResponseDTO addApprovalLog(ApprovalLog log);
}
