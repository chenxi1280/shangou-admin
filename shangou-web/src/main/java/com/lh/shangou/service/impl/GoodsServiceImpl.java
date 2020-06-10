package com.lh.shangou.service.impl;

import com.lh.shangou.dao.GoodsDao;
import com.lh.shangou.dao.MerchantDao;
import com.lh.shangou.dao.UserDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Goods;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.pojo.vo.UserVO;
import com.lh.shangou.service.GoodsService;
import com.lh.shangou.service.ImgCacheService;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Resource
    GoodsDao goodsDao;
    @Resource
    UserDao userDao;


    @Resource
    MerchantDao merchantDao;

    @Override
    public PageDTO ajaxList(GoodsQuery query) {
        List<GoodsVO> goodsList = goodsDao.ajaxList(query);

        if (!CollectionUtils.isEmpty(goodsList)) {
            // 变成用户id集合先
            Set<Long> collect = goodsList.stream().map(GoodsVO::getUpdateUser).collect(Collectors.toSet());
            // 根据 用户ids查询出来用户
            List<UserVO> userVOS = userDao.selectUserVOByIds(collect);
            Map<Long, List<UserVO>> collect1 = userVOS.stream().collect(Collectors.groupingBy(UserVO::getUserId));
            for (GoodsVO g : goodsList) {
                List<UserVO> userVOS1 = collect1.get(g.getUpdateUser());// 根据用户id把用户取出来
                if (!CollectionUtils.isEmpty(userVOS1)) {
                    g.setUpdateUserName(userVOS1.get(0).getRealName());
                }
            }
        }
        Integer count = goodsDao.ajaxListCount(query);
        return PageDTO.setPageData(count, goodsList);
    }

    @Override
    public ResponseDTO edit(Goods goods) {
//
//        Goods oldGoods=goodsDao.selectByPrimaryKey(goods.getGoodsId());
//
////        replaceOldObject(oldGoods,goods);// 视图用 新的替换老的文件

        return ResponseDTO.get(goodsDao.updateByPrimaryKeySelective(goods) == 1);
    }

    @Override
    public ResponseDTO delete(Goods goods) {
        return ResponseDTO.get(goodsDao.deleteByPrimaryKey(goods.getGoodsId()) == 1);

    }

    @Override
    public ResponseDTO add(Goods goods) {
        Merchant m = merchantDao.selectByPrimaryKey(goods.getMerchantId());
        goods.setBusinessTypeId(m.getBusinessType());
        goods.setProvince(m.getProvince());
        goods.setSold(0);// 一个也没有卖出去
        if (goods.getIsCoupon() == null) {
            goods.setIsCoupon(false);
        }
        if (goods.getTakeaway() == null) {
            goods.setTakeaway(false);
        }
        if (goods.getOnSale() == null) {
            goods.setOnSale(false);
        }
        // 删除缓存图片
        deleteImgCache(goods);
        return ResponseDTO.get(goodsDao.insertSelective(goods) == 1);
    }

    @Override
    public Goods getById(Long goodsId) {
        return goodsDao.selectByPrimaryKey(goodsId);
    }
}
