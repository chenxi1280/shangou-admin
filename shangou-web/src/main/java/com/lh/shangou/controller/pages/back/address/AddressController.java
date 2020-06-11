package com.lh.shangou.controller.pages.back.address;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Address;
import com.lh.shangou.pojo.query.AddressQuery;
import com.lh.shangou.service.AddressService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/address")
public class AddressController extends BaseController {
    @Resource
    AddressService addressService;

    // 查询用户的地址
    @RequestMapping("getUserAddress")
    @ResponseBody
    ResponseDTO getUserAddress(AddressQuery query) {
        query.setUserId(getUserId());
        return addressService.getUserAddress(query);
    }
    @RequestMapping("add")
    @ResponseBody
    ResponseDTO add(Address address) {
        address.setUserId(getUserId());
        return addressService.add(address);
    }
    @RequestMapping("delete/{id}")
    @ResponseBody
    ResponseDTO delete(@PathVariable Long id) {
        return addressService.delete(id);
    }



}
