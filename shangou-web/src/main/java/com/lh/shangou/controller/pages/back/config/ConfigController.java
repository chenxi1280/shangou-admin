package com.lh.shangou.controller.pages.back.config;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.query.AppConfigQuery;
import com.lh.shangou.service.AppConfigService;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */

@Controller
@RequestMapping("/pages/back/config")
public class ConfigController extends BaseController {
    @Resource
    AppConfigService appConfigService;

    @RequestMapping("list")
    String list() {
        return "pages/back/config/config-list";
    }
    @RequestMapping("add")
    @ResponseBody
    ResponseDTO add(AppConfig appConfig) {
        String valueImg = getRequest().getParameter("valueImg");
        if(!StringUtils.isEmpty(valueImg)){// 有图上传
            String[] split = valueImg.split(",");
            if(split.length==1){// 单图
                appConfig.setValue(valueImg);
            }else {
                appConfig.setValue(JSON.toJSONString(split));
                appConfig.setIsJson(true);
            }
        }
        System.err.println(valueImg);
        return appConfigService.add(appConfig);
    }
    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(AppConfigQuery appConfig) {
        return appConfigService.ajaxList(appConfig);
    }
    @RequestMapping("delete/{id}")
    @ResponseBody
    ResponseDTO add(@PathVariable  Integer id) {
        return appConfigService.delete(id);
    }

    @RequestMapping("edit")
    @ResponseBody
    ResponseDTO edit(AppConfig a) {
        return appConfigService.edit(a);
    }


    @RequestMapping("getNewData")
    @ResponseBody
    ResponseDTO getNewData(AppConfig a) {
        System.err.println(a);



        return appConfigService.getNewData(a);
    }




}
