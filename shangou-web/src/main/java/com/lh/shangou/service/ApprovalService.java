package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.ApprovalLogQuery;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */

public interface ApprovalService {
    PageDTO getMerchantLogsById(Long mid);

    PageDTO getMerchantLogsByQuery(ApprovalLogQuery query);
}
