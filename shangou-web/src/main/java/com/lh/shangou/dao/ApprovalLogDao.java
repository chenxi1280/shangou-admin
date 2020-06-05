package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import com.lh.shangou.pojo.vo.ApprovalLogVO;

import java.util.List;

public interface ApprovalLogDao {
    int deleteByPrimaryKey(Integer approvalLogId);

    int insert(ApprovalLog record);

    int insertSelective(ApprovalLog record);

    ApprovalLog selectByPrimaryKey(Integer approvalLogId);

    int updateByPrimaryKeySelective(ApprovalLog record);

    int updateByPrimaryKey(ApprovalLog record);

    List<ApprovalLogVO> getMerchantLogsById(Long mid);

    List<ApprovalLogVO> getMerchantLogsByQuery(ApprovalLogQuery query);

    Integer getMerchantLogsByQueryCount(ApprovalLogQuery query);
}
