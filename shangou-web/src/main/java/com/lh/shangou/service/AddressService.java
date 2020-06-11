package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.query.AddressQuery;
import com.lh.shangou.pojo.vo.AddressVO;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
public interface AddressService {
    ResponseDTO getUserAddress(AddressQuery query);

    ResponseDTO add(Address address);

    Address selectAddressById(Long addressId);

    ResponseDTO delete(Long id);
}
