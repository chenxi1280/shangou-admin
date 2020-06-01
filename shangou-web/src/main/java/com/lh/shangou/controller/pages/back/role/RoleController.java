package com.lh.shangou.controller.pages.back.role;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.query.RoleQuery;
import com.lh.shangou.service.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/role")
public class RoleController {

    @Resource
    RoleService roleService;

    @RequestMapping("list")
    String list() {
        return "pages/back/role/role-list";
    }

    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(RoleQuery query) {
        return roleService.ajaxList(query);
    }


    @RequestMapping("editRole")
    @ResponseBody
    ResponseDTO editRole(Role role) {
        return roleService.editRole(role);
    }

}
