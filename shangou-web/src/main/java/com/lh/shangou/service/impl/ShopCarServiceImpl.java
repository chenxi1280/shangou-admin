package com.lh.shangou.service.impl;

import com.lh.shangou.dao.ShopCarDao;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ShopCar;
import com.lh.shangou.service.ShopCarService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/6/10
 */
@Service
public class ShopCarServiceImpl implements ShopCarService {

    @Resource
    ShopCarDao shopCarDao;

    @Override
    public ResponseDTO editCount(ShopCar car) {
        if (shopCarDao.selectCarCountByCar(car) > 0) {
            return ResponseDTO.get(shopCarDao.updateByCar(car) == 1);
        } else {
            return ResponseDTO.get(shopCarDao.insertSelective(car) == 1);
        }
    }
}
