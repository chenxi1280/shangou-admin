package com.lh.shangou.service.impl;

import com.lh.shangou.dao.GoodsDao;
import com.lh.shangou.dao.MerchantDao;
import com.lh.shangou.dao.ShopCarDao;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.entity.ShopCar;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.ShopCarVO;
import com.lh.shangou.service.ShopCarService;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/6/10
 */
@Service
public class ShopCarServiceImpl implements ShopCarService {

    @Resource
    ShopCarDao shopCarDao;
    @Resource
    MerchantDao merchantDao;

    @Resource
    GoodsDao goodsDao;

    @Override
    public ResponseDTO editCount(ShopCar car) {
        if (shopCarDao.selectCarCountByCar(car) > 0) {
            return ResponseDTO.get(shopCarDao.updateByCar(car) == 1);
        } else {
            return ResponseDTO.get(shopCarDao.insertSelective(car) == 1);
        }
    }

    @Override
    public ResponseDTO deleteAllCars(ShopCar car) {
        shopCarDao.deleteAllCars(car);
        return ResponseDTO.ok("成功");
    }

    @Override
    public Map<String, List<ShopCarVO>> getUserAllCars(Long userId) {
        List<ShopCarVO> carVOS = shopCarDao.selectByUserId(userId);
        List<Merchant> merchantVOS = merchantDao.getByObjects(carVOS);
        Map<Long, List<Merchant>> collect = merchantVOS.stream().collect(Collectors.groupingBy(Merchant::getMerchantId));
        List<GoodsVO> goodsVOS = goodsDao.getByIds(carVOS);
        Map<Long, List<GoodsVO>> collect1 = goodsVOS.stream().collect(Collectors.groupingBy(GoodsVO::getGoodsId));
        for (ShopCarVO s : carVOS) {

            List<Merchant> merchants = collect.get(s.getMerchantId());
            if (!CollectionUtils.isEmpty(merchants)) {
                s.setMerchant(merchants.get(0));
            }
            List<GoodsVO> goodsVOS1 = collect1.get(s.getGoodsId());
            if (!CollectionUtils.isEmpty(goodsVOS1)) {
                s.setGoodsVO(goodsVOS1.get(0));
            }
        }
        if (!CollectionUtils.isEmpty(carVOS)) {
            return carVOS.stream().collect(Collectors.groupingBy(ShopCarVO::getShopName));
        }
        return null;
    }
}
