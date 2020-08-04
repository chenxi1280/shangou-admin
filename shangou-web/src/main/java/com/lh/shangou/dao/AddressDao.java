package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.query.AddressQuery;
import com.lh.shangou.pojo.vo.AddressVO;

import java.util.List;


public interface AddressDao {
    int deleteByPrimaryKey(Long addressId);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Long addressId);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);

    List<AddressVO> getUserAddress(AddressQuery query);

    // 设置其他地址不是默认
    void updateOtherAddressNotMoren(Address address);
}
