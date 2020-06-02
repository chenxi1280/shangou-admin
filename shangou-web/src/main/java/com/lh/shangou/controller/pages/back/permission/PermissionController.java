package com.lh.shangou.controller.pages.back.permission;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Permission;
import com.lh.shangou.pojo.query.PermissionQuery;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.service.PermissionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
@RequestMapping("/pages/back/permission")
public class PermissionController {

    @Resource
    PermissionService permissionService;

    @RequestMapping("list")
    String list() {
        return "pages/back/permission/permission-list";
    }

    @RequestMapping("ajaxList")
    @ResponseBody
    PageDTO ajaxList(PermissionQuery query) {
        return permissionService.ajaxList(query);
    }

    @RequestMapping("editPermission")
    @ResponseBody
    ResponseDTO editPermission(Permission permission) {
        return permissionService.editPermission(permission);
    }

    @RequestMapping("deletePermissions")
    @ResponseBody
    ResponseDTO deletePermissions(@RequestBody List<Permission> permissions) {
        return permissionService.deletePermissions(permissions);
    }

    @RequestMapping("addPermissionToRole")
    @ResponseBody
    ResponseDTO addPermissionToRole(String str) {
        // 把String变成对象
        RoleVO roleVO = JSON.parseObject(str, RoleVO.class);
        return permissionService.addPermissionToRole(roleVO);
    }
    @RequestMapping("removePermissionFromRole")
    @ResponseBody
    ResponseDTO removePermissionFromRole(String str) {// 把权限从角色里边移除
        // 把String变成对象
        RoleVO roleVO = JSON.parseObject(str, RoleVO.class);
        return permissionService.removePermissionFromRole(roleVO);
    }
    @RequestMapping("add")
    @ResponseBody
    ResponseDTO add(Permission permission) {// 把权限从角色里边移除
        return permissionService.add(permission);
    }


}
