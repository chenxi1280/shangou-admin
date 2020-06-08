package com.lh.shangou.controller.pages.back.user;

import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ApprovalLog;
import com.lh.shangou.pojo.query.ApprovalLogQuery;
import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.service.ApprovalService;
import com.lh.shangou.service.RoleService;
import com.lh.shangou.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/user")
public class UserController extends BaseController {
    @Resource
    UserService userService;


    @Resource
    RoleService roleService;

    // 分页商户语句
    @RequestMapping("list")
    String list(Model model) {
        PageDTO systemRoles = roleService.getSystemRoles();
        model.addAttribute("systemRoles", systemRoles.getData());
        return "pages/back/user/user-list";
    }


    // 分页商户语句
    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(UserQuery query) {
        return userService.ajaxList(query);
    }

    // 分页商户语句
    @RequestMapping("getUserRoles/{phone}")
    @ResponseBody
    List<RoleVO> getUserRoles(@PathVariable String phone) {
        return userService.selectHisRolesByPhone(phone);
    }


}