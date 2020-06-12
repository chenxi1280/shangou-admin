package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ShopCar;

/**
 * creator：杜夫人
 * date: 2020/6/10
 */
public interface ShopCarService {
    ResponseDTO editCount(ShopCar car);

    ResponseDTO deleteAllCars(ShopCar car);
}
