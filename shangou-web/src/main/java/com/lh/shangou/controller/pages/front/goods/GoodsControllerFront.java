package com.lh.shangou.controller.pages.front.goods;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @Classname GoodsControllerFront
 * @Description TODO
 * @Date 2020/7/26 16:49
 * @CreateComputer by PC
 * @Created by cxd
 */
@Controller
@RequestMapping("/pages/front/goods")
public class GoodsControllerFront {
    @Resource
    GoodsService goodsService;
    // 平台对商品进行列表查看
    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(GoodsQuery query) {
        query.setLimit(100);
        return goodsService.ajaxList(query);
    }

    @RequestMapping("ajaxGoods")
    @ResponseBody
    ResponseDTO ajaxGoods(GoodsQuery goodsQuery) {
        return ResponseDTO.ok("success", goodsService.getById(goodsQuery.getGoodsId()));
    }


}

