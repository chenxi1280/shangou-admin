package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.pojo.vo.MerchantVO;
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

    ResponseDTO editMerchant(Merchant merchant);

    // 查询附近商家，并且带上商家卖得最好的商品
    PageDTO getNearbyMerchantsGoods(MerchantQuery query);


    /**
     * 还需要带上商户的所有商品类型
     * 索性把商品类型查出来之后，把商品也查出来，这样一口气查出来传到前端，免费前端再次发ajax来服务器请求数据，一个店铺的全部商品数据也不会太多
     * @param merchantId
     * @return
     */
    MerchantVO selectMerchantById(Long merchantId);
}
