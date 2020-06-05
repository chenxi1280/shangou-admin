package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.GoodsQuery;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */

public interface GoodsService {
    PageDTO ajaxList(GoodsQuery query);
}
