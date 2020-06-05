package com.lh.shangou.service.impl;

import com.lh.shangou.dao.GoodsDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Resource
    GoodsDao goodsDao;

    @Override
    public PageDTO ajaxList(GoodsQuery query) {
        List<GoodsVO> goodsList = goodsDao.ajaxList(query);
        Integer count = goodsDao.ajaxListCount(query);

        return PageDTO.setPageData(count,goodsList);
    }
}
