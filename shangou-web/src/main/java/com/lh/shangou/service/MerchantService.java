package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.MerchantQuery;
import org.springframework.stereotype.Service;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */

public interface MerchantService {
    ResponseDTO add(Merchant merchant);

    PageDTO ajaxList(MerchantQuery query);

    PageDTO getMerchantLogsById(Long id);

    // 通过用户id查询商户id
    Long selectMerchantIdByUserId(Long userId);
}
