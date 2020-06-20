package com.lh.shangou.controller;

import com.lh.shangou.consts.consts.ConfigConsts;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.vo.ButtonGroupVO;
import com.lh.shangou.pojo.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
public class IndexController extends BaseController {


    @Resource
    RestTemplate restTemplate;// restTemplate需要注入到容器里边

    @RequestMapping("/")
    String index(Model model) {
        model.addAttribute(ConfigConsts.headerImg, getSingleValueByKey(ConfigConsts.headerImg));// 设置首页头部背景图片
        model.addAttribute(ConfigConsts.bannerImg, getSingleValueByKey(ConfigConsts.bannerImg));// 设置首页头部背景图片
        model.addAttribute(ConfigConsts.indexImgs, getListByKey(ConfigConsts.indexImgs, String.class));// 设置首页轮播图
        model.addAttribute(ConfigConsts.vipImgs, getListByKey(ConfigConsts.vipImgs, String.class));// 设置首页轮播图
        //    model.addAttribute("indexGifImg", getSingleValueByKey("indexGifImg"));// 设置首页动图
        model.addAttribute(ConfigConsts.newPerson, getSingleValueByKey(ConfigConsts.newPerson));// 设置首页新用户
        model.addAttribute(ConfigConsts.newPersonDown, getSingleValueByKey(ConfigConsts.newPersonDown));// 设置首页新用户下面的图片
        model.addAttribute(ConfigConsts.hostWords, getListByKey(ConfigConsts.hostWords, String.class));// 设置热点词
        model.addAttribute(ConfigConsts.indexMenu, getListByKey(ConfigConsts.indexMenu, ButtonGroupVO.class));// 设置热点词

        return "index";
    }


    @RequestMapping("/test")
    ResponseDTO test(UserVO user) {
        System.err.println(user);
        return ResponseDTO.ok("");
    }

}
