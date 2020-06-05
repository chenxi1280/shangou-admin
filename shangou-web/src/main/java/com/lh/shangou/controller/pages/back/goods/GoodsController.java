package com.lh.shangou.controller.pages.back.goods;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/goods")
public class GoodsController {
    @Resource
    GoodsService goodsService;

    @RequestMapping("list")
    String list() {
        return "pages/back/goods/goods-list";
    }

    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(GoodsQuery query) {
        return goodsService.ajaxList(query);
    }

}
