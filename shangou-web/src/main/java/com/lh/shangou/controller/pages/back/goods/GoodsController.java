package com.lh.shangou.controller.pages.back.goods;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Goods;
import com.lh.shangou.pojo.entity.GoodsType;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.vo.GoodsTypeVO;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.service.GoodsService;
import com.lh.shangou.service.GoodsTypeService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/goods")
public class GoodsController extends BaseController {
    @Resource
    GoodsService goodsService;
    @Resource
    GoodsTypeService goodsTypeService;

    // 修改
    @RequestMapping("editPre/{goodsId}")
    String editPre(@PathVariable Long goodsId, Model model) {

        List<GoodsTypeVO> goodsTypeVOS = goodsTypeService.getMerchantGoodsTypes(getMerchantId());
        model.addAttribute("goodsTypes", goodsTypeVOS);

        Goods g = goodsService.getById(goodsId);
        model.addAttribute("g", g);

        return "pages/back/goods/goods-editPre";
    }

    @RequestMapping("addPre")
    String addPre(Model model) {

        List<GoodsTypeVO> goodsTypeVOS = goodsTypeService.getMerchantGoodsTypes(getMerchantId());
        model.addAttribute("goodsTypes", goodsTypeVOS);

        return "pages/back/goods/goods-addPre";
    }

    // 对商户的商品进行分页
    @RequestMapping("add")
    @ResponseBody
    ResponseDTO add(Goods goods) {
        Date date = new Date();
        goods.setUpdateUser(getUserId());
        goods.setCreateTime(date);
        goods.setMerchantId(getMerchantId());
        goods.setUpdateTime(date);
        return goodsService.add(goods);
    }

    // 平台对商品进行列表查看
    @RequestMapping("list")
    String list(Model model) {
        return "pages/back/goods/goods-list";
    }
    // 商户对自己的商品进行列表查看
    @RequestMapping("merchantList")
    String merchantList(Model model) {
        // 查询当前商户的商品类型
        List<GoodsTypeVO> goodsTypeVOS = goodsTypeService.getMerchantGoodsTypes(getMerchantId());
        model.addAttribute("goodsTypes", goodsTypeVOS);
        return "pages/back/goods/merchant-goods-list";
    }
    // 平台对商品进行列表查看
    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(GoodsQuery query, Model model) {
        return goodsService.ajaxList(query);
    }

    // 对商户的商品进行分页
    @RequestMapping("ajaxListMerchantGoods")
    @ResponseBody
    PageDTO merchantList(GoodsQuery query) {
        query.setMerchantId(getMerchantId());
        return goodsService.ajaxList(query);
    }
    // 可以用拥有这个角色，但是不具备修改商品的功能
    @RequestMapping("edit")
    @ResponseBody
    ResponseDTO edit(Goods goods) {
        goods.setUpdateUser(getUserId());// 设置最后一次的修改人
//        goods.setMerchantId(getMerchantId());// 设置商品的商户id是当前用户的商户id
        return goodsService.edit(goods);
    }
    @RequestMapping("delete/{goodsId}")
    @ResponseBody
    ResponseDTO delete(Goods goods) {
        return goodsService.delete(goods);
    }
}
