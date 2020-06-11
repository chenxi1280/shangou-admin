package com.lh.shangou.service.impl;

import com.lh.shangou.dao.AddressDao;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.query.AddressQuery;
import com.lh.shangou.pojo.vo.AddressVO;
import com.lh.shangou.service.AddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Service
public class AddressServiceImpl implements AddressService {

    @Resource
    AddressDao addressDao;

    @Override
    public ResponseDTO getUserAddress(AddressQuery query) {
        List<AddressVO> addressVOS = addressDao.getUserAddress(query);
        return ResponseDTO.ok("成功", addressVOS);
    }

    @Override
    public ResponseDTO add(Address address) {
        if (addressDao.insertSelective(address) == 1) {// 插入数据成功
            if (address.getMoren()) {// 如果当前地址是默认，需要把其他地址设置为非默认
                addressDao.updateOtherAddressNotMoren(address);
                return ResponseDTO.ok("添加成功");
            }
        }
        return ResponseDTO.fail("添加失败");
    }

    @Override
    public Address selectAddressById(Long addressId) {
        return addressDao.selectByPrimaryKey(addressId);
    }
}
