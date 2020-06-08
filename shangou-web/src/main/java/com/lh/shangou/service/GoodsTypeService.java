package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.GoodsType;
import com.lh.shangou.pojo.query.GoodsTypeQuery;
import com.lh.shangou.pojo.vo.GoodsTypeVO;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/8
 */
public interface GoodsTypeService {
    PageDTO ajaxList(GoodsTypeQuery query);

    ResponseDTO add(GoodsType goodsType);

    ResponseDTO delete(GoodsType goodsType);

    ResponseDTO edit(GoodsType goodsType);

    List<GoodsTypeVO> getMerchantGoodsTypes(Long merchantId);
}
