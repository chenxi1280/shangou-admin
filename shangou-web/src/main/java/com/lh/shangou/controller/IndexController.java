package com.lh.shangou.controller;

import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.vo.AppConfigVO;
import com.lh.shangou.pojo.vo.ButtonGroupVO;
import com.lh.shangou.service.AppConfigService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        String headerImg = getSingleValueByKey("headerImg");
        model.addAttribute("headerImg", headerImg);// 设置首页头部背景图片
        model.addAttribute("bannerImg", getSingleValueByKey("bannerImg"));// 设置首页头部背景图片
        model.addAttribute("indexImgs", getListByKey("indexImgs", String.class));// 设置首页banner背景图片
        //    model.addAttribute("indexGifImg", getSingleValueByKey("indexGifImg"));// 设置首页动图
        model.addAttribute("newPerson", getSingleValueByKey("newPerson"));// 设置首页新用户
        model.addAttribute("newPersonDown", getSingleValueByKey("newPersonDown"));// 设置首页新用户下面的图片
        model.addAttribute("hostWords", getListByKey("hostWords", String.class));// 设置热点词
        model.addAttribute("indexMenu", getListByKey("indexMenu", ButtonGroupVO.class));// 设置热点词

        return "index";
    }
}
