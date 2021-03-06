package com.lh.shangou.controller.pages.front.user;

import com.lh.shangou.consts.consts.ConfigConsts;
import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.vo.ButtonGroupVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * creator：Administrator
 * date:2019/11/5
 * 用户点击我的的控制层
 */
@RequestMapping("pages/front/user")
@Controller
public class UserControllerFront extends BaseController {

//    @Resource
//    AppCfgService appCfgService;

    @RequestMapping("/userInfo")
    String myInfo(Model model) {
        model.addAttribute(ConfigConsts.userPageImgs, getListByKey(ConfigConsts.userPageImgs,String.class));// 设置首页头部背景图片
        model.addAttribute(ConfigConsts.userMenus, getListByKey(ConfigConsts.userMenus, ButtonGroupVO.class));// 设置首页头部背景图片


        // 去查询 配置的菜单和轮播图
//      model.addAllAttributes(appCfgService.getAppCfgInfoS(AppcfgTypeConsts.MY_PAGE_CAROUSEL_IMG_CONFIG));
//      model.addAllAttributes(appCfgService.getAppCfgInfoS(AppcfgTypeConsts.MY_PAGE_MY_MENUS_CONFIG));
        return "pages/front/user/user-info.html";// 去用户信息页面
    }

}
