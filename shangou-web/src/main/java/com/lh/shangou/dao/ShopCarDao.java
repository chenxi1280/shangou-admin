package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.ShopCar;
import com.lh.shangou.pojo.vo.ShopCarVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopCarDao {
    int deleteByPrimaryKey(Integer shopCarId);

    int insert(ShopCar record);

    int insertSelective(ShopCar record);

    ShopCar selectByPrimaryKey(Integer shopCarId);

    int updateByPrimaryKeySelective(ShopCar record);

    int updateByPrimaryKey(ShopCar record);

    List<ShopCarVO> selectCarsByMerchantIdAndUserId(@Param("merchantId") Long merchantId,@Param("userId")  Long userId);

    int selectCarCountByCar(ShopCar car);

    int updateByCar(ShopCar car);

    void deleteAllCars(ShopCar car);
}
