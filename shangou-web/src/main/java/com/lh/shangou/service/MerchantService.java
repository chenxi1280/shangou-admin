package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import org.springframework.stereotype.Service;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */

public interface MerchantService {
    ResponseDTO add(Merchant merchant);
}
