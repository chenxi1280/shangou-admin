package com.lh.shangou.controller.pages.front.user;

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
public class UserControllerFront {

//    @Resource
//    AppCfgService appCfgService;

    @RequestMapping("/userInfo")
    String myInfo(Model model) {
        // 去查询 配置的菜单和轮播图
//      model.addAllAttributes(appCfgService.getAppCfgInfoS(AppcfgTypeConsts.MY_PAGE_CAROUSEL_IMG_CONFIG));
//      model.addAllAttributes(appCfgService.getAppCfgInfoS(AppcfgTypeConsts.MY_PAGE_MY_MENUS_CONFIG));
        return "pages/front/user/user-info.html";// 去用户信息页面
    }

}
