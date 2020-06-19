package com.lh.shangou.controller.pages.back.shopCar;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.entity.ShopCar;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import com.lh.shangou.service.ApprovalService;
import com.lh.shangou.service.ShopCarService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/shopCar")
public class ShopCarController extends BaseController {
    @Resource
    ShopCarService shopCarService;


    @RequestMapping("editCount")
    @ResponseBody
    ResponseDTO editCount(ShopCar car) {
        car.setUserId(getUserId());
        return shopCarService.editCount(car);
    }
    @RequestMapping("deleteAllCars")
    @ResponseBody
    ResponseDTO deleteAllCars(ShopCar car) {
        car.setUserId(getUserId());
        return shopCarService.deleteAllCars(car);
    }

    @RequestMapping("list")
    String list(Model model) {
        // 要查询用户的所有购物车
        model.addAttribute("cars",shopCarService.getUserAllCars(getUserId()));
        return "pages/back/car/shopCar-list";
    }


}
