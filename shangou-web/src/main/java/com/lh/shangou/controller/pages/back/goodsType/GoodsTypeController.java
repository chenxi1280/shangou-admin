package com.lh.shangou.controller.pages.back.goodsType;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.GoodsType;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.query.GoodsTypeQuery;
import com.lh.shangou.service.GoodsService;
import com.lh.shangou.service.GoodsTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/goodsType")
public class GoodsTypeController extends BaseController {
    @Resource
    GoodsTypeService goodsTypeService;

    @RequestMapping("list")
    String list() {
        return "pages/back/goodstype/goods-type-list";
    }

    // 商户的商品类型列表
    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(GoodsTypeQuery query) {
        query.setMerchantId(getMerchantId());
        return goodsTypeService.ajaxList(query);
    }

    // 商户添加商品类型
    @RequestMapping("add")
    @ResponseBody
    ResponseDTO add(GoodsType goodsType) {
        goodsType.setMerchantId(getMerchantId());
        return goodsTypeService.add(goodsType);
    }

    // 商户添加商品类型
    @RequestMapping("delete/{goodsTypeId}")
    @ResponseBody
    ResponseDTO delete(GoodsType goodsType) {
        // 防止恶意删除别人商户的商品类型,就需要根据商户id和类型id同时作为条件删除
//        goodsType.setMerchantId(getMerchantId());
        return goodsTypeService.delete(goodsType);
    }
    // 商户添加商品类型
    @RequestMapping("edit")
    @ResponseBody
    ResponseDTO edit(GoodsType goodsType) {
        return goodsTypeService.edit(goodsType);
    }



}
