package com.lh.shangou.service.impl;

import com.lh.shangou.dao.GoodsTypeDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.GoodsType;
import com.lh.shangou.pojo.query.GoodsTypeQuery;
import com.lh.shangou.pojo.vo.GoodsTypeVO;
import com.lh.shangou.service.GoodsTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/8
 */
@Service
public class GoodsTypeServiceImpl implements GoodsTypeService {
    @Resource
    GoodsTypeDao goodsTypeDao;

    @Override
    public PageDTO ajaxList(GoodsTypeQuery query) {
        List<GoodsTypeVO> list = goodsTypeDao.ajaxList(query);
        Integer count = goodsTypeDao.ajaxListCount(query);
        return PageDTO.setPageData(count, list);
    }

    @Override
    public ResponseDTO add(GoodsType goodsType) {
        return ResponseDTO.get(goodsTypeDao.insertSelective(goodsType) == 1);
    }

    @Override
    public ResponseDTO delete(GoodsType goodsType) {
        return ResponseDTO.get(goodsTypeDao.deleteByPrimaryKey(goodsType.getGoodsTypeId()) == 1);
    }

    @Override
    public ResponseDTO edit(GoodsType goodsType) {
        return ResponseDTO.get(goodsTypeDao.updateByPrimaryKeySelective(goodsType) == 1);


    }

    @Override
    public List<GoodsTypeVO> getMerchantGoodsTypes(Long merchantId) {

       return goodsTypeDao.selectByMerchantId(merchantId);
    }
}
