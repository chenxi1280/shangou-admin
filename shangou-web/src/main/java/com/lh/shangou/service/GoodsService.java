package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Goods;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.vo.GoodsVO;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */

public interface GoodsService  extends BaseService{
    PageDTO ajaxList(GoodsQuery query);

    ResponseDTO edit(Goods goods);

    ResponseDTO delete(Goods goods);

    ResponseDTO add(Goods goods);

    Goods getById(Long goodsId);
}
