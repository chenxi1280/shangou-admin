package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.pojo.vo.MerchantVO;

import java.util.List;

public interface MerchantDao {
    int deleteByPrimaryKey(Long merchantId);

    int insert(Merchant record);

    int insertSelective(Merchant record);

    Merchant selectByPrimaryKey(Long merchantId);

    int updateByPrimaryKeySelective(Merchant record);

    int updateByPrimaryKey(Merchant record);

    List<MerchantVO> ajaxList(MerchantQuery query);

    Integer ajaxListCount(MerchantQuery query);

    MerchantVO selectByUserId(Long userId);

    MerchantVO selectByPK(Long merchantId);
}
