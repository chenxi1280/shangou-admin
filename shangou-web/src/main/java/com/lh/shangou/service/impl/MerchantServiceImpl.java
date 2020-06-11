package com.lh.shangou.service.impl;

import com.lh.shangou.consts.enums.ApprovalEnum;
import com.lh.shangou.dao.*;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.entity.ShopCar;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.pojo.vo.GoodsTypeVO;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.pojo.vo.ShopCarVO;
import com.lh.shangou.service.ImgCacheService;
import com.lh.shangou.service.MerchantService;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
@Service
public class MerchantServiceImpl implements MerchantService {
    @Resource
    MerchantDao merchantDao;

    @Resource
    GoodsDao goodsDao;
    @Resource
    GoodsTypeDao goodsTypeDao;
    @Resource
    ShopCarDao shopCarDao;
    @Resource
    ImgCacheService imgCacheService;

    @Override
    public ResponseDTO add(Merchant merchant) {
        // 断定pcd(省市区字段不是null和“”)，否则就抛异常
        Assert.notNull(merchant.getPcd(), "省市区字段不能为空！");// 抛出异常将会进入全局异常捕获
        String province = merchant.getPcd().split("-")[0];// 把省取出来
        merchant.setProvince(province);// 设置省份

        Date now = new Date();
        merchant.setCreateTime(now);
        merchant.setUpdateTime(now);
        merchant.setMaxDeliveryArea(3.0);// 默认最大配送距离三千米

        merchant.setMerchantId(System.currentTimeMillis());// 设置当前商户的id// 时间戳来设置不好

        merchant.setApprovalStatus(ApprovalEnum.审核中.toString());// 设置当前商户的id// 时间戳来设置不好

        if (merchantDao.insertSelective(merchant) == 1) {

            imgCacheService.deleteImgCache(merchant);// 清除缓存图片

            return ResponseDTO.ok("申请成功");
        }
        return ResponseDTO.fail("申请失败");
        // 手动的清楚缓存图片
    }

    @Override
    public PageDTO ajaxList(MerchantQuery query) {
        List<MerchantVO> merchants = merchantDao.ajaxList(query);
        Integer count = merchantDao.ajaxListCount(query);
        return PageDTO.setPageData(count, merchants);
    }

    @Override
    public PageDTO getMerchantLogsById(Long id) {
        return null;
    }

    @Override
    public Long selectMerchantIdByUserId(Long userId) {
        MerchantVO m = merchantDao.selectByUserId(userId);
        if (m != null) {
            return m.getMerchantId();
        }
        return null;
    }

    @Override
    public ResponseDTO editMerchant(Merchant merchant) {
        return ResponseDTO.get(merchantDao.updateByPrimaryKeySelective(merchant) == 1);
    }

    @Override
    public PageDTO getNearbyMerchantsGoods(MerchantQuery query) {
        List<MerchantVO> merchants = merchantDao.ajaxList(query);// 从集合里边剔除元素，必须使用iterator
        // 查询出来之后，就查询商户卖得最好的商品，就是销量最多的商品
        if (!CollectionUtils.isEmpty(merchants)) {// 如果是空集，要报错，所以必须判断不是空集才能mybatis的 for循环

            List<GoodsVO> goodsVOS = goodsDao.getMerchantBestGoods(merchants);
            Map<Long, List<GoodsVO>> collect = goodsVOS.stream().collect(Collectors.groupingBy(GoodsVO::getMerchantId));


            Iterator<MerchantVO> iterator = merchants.iterator();// 迭代
            while (iterator.hasNext()) {// 还有下一个元素
                MerchantVO next = iterator.next();// 取出来商户
                List<GoodsVO> goodsVOS1 = collect.get(next.getMerchantId());

                if (CollectionUtils.isEmpty(goodsVOS1)) {// 这个商家压根没有最好的商品，直接放弃这个商家
                    iterator.remove();// 从集合里边移除这个商家
                } else {
                    next.setBestGoods(goodsVOS1.get(0));// 不管有多少个卖得相同数量最好的，都只取一个
                }
            }
        }

        Integer count = merchantDao.ajaxListCount(query);
        return PageDTO.setPageData(count, merchants);
    }

    @Override
    public MerchantVO selectMerchantById(Long merchantId) {
        // 1查询商户基本字段
        MerchantVO merchantVO = merchantDao.selectByPK(merchantId);
        // 根据商户id查询商户的所有 商品类型
        List<GoodsTypeVO> goodsTypeVOS = goodsTypeDao.selectByMerchantId(merchantId);

        merchantVO.setGoodsTypeList(goodsTypeVOS);// 可以！java堆内存 改变

        if (!CollectionUtils.isEmpty(goodsTypeVOS)) {
            // 3、根据商品类型的集合批量查询商品
            List<GoodsVO> g = goodsDao.selectGoodsByTypes(goodsTypeVOS);
            // 按照商品类型分组
            Map<Long, List<GoodsVO>> collect = g.stream().collect(Collectors.groupingBy(GoodsVO::getGoodsTypeId));
            for (GoodsTypeVO t : goodsTypeVOS) {
                t.setGoodsVOS(collect.get(t.getGoodsTypeId()));// 设置这种商品类型的商品
            }
            // 根据用户id和商户id查询用户的购物车
            List<ShopCarVO> cars = shopCarDao.selectCarsByMerchantIdAndUserId(merchantVO.getMerchantId(), (Long) SecurityUtils.getSubject().getSession().getAttribute("userId"));

            for (GoodsVO goodsVO : g) {
                for (ShopCarVO car : cars) {
                    if (goodsVO.getGoodsId().equals(car.getGoodsId())) {
                        goodsVO.setShopCarCount(car.getCount());
                        break;
                    }
                }
            }
        }
        return merchantVO;
    }

    @Override
    public MerchantVO selectMerchantBaseInfoById(Long merchantId) {
        return merchantDao.selectByPK(merchantId);
    }
}
