package com.lh.shangou.service.impl;

import com.lh.shangou.dao.PermissionDao;
import com.lh.shangou.dao.RoleDao;
import com.lh.shangou.dao.UserDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Permission;
import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.query.PermissionQuery;
import com.lh.shangou.pojo.vo.PermissionVO;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.service.PermissionService;
import com.lh.shangou.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;

/**
 * creator：杜夫人
 * date: 2020/6/2
 */
@Service
public class PermissionServiceImpl implements PermissionService {
    @Resource
    PermissionDao permissionDao;
    @Resource
    RoleDao roleDao;

    @Resource
    UserService userService;


    @Override
    public PageDTO ajaxList(PermissionQuery query) {
        List<PermissionVO> permissionVOS = permissionDao.ajaxList(query);
        Integer count = permissionDao.ajaxListCount(query);
        return PageDTO.setPageData(count, permissionVOS);
    }

    @Override
    public ResponseDTO editPermission(Permission permission) {
        return ResponseDTO.get(permissionDao.updateByPrimaryKeySelective(permission) == 1);
    }

    @Override
    public ResponseDTO deletePermissions(List<Permission> permissions) {
        return ResponseDTO.get(permissionDao.deletePermissions(permissions) == permissions.size());
    }

    @Override
    public ResponseDTO addPermissionToRole(RoleVO r) {
        Role role = roleDao.selectByPrimaryKey(r.getRoleId());
        r.setPermissions(role.getPermissions());
        // 第一步：先把原来的权限取出来,Collections.singletonList将单个元素变成 单个元素的集合
        List<PermissionVO> permissionVOS = userService.selectHisPermissionByRoles(Collections.singletonList(r));


        permissionVOS.addAll(r.getPermissionVOS());// 把传过来的新的权限集合和原来的权限集合合并成一体
        TreeSet<Integer> treeSet = new TreeSet<>();
        for (PermissionVO p : permissionVOS) {
            treeSet.add(p.getPermissionId());
        }
        // 走到这一步，那么treeSet集合里边就拥有了本身的权限了和传过来的权限都有了
        StringBuffer buffer = new StringBuffer();
        // 把set集合变成字符串，用逗号分隔
        for (Integer pid : treeSet) {
            buffer.append(pid).append(",");
        }
        if (buffer.length() > 0) {
            buffer.delete(buffer.length() - 1, buffer.length());
        }
        String pStr = buffer.toString();
        Role updateRole = new Role();
        updateRole.setRoleId(r.getRoleId());
        updateRole.setPermissions(pStr);
        return ResponseDTO.get(roleDao.updateByPrimaryKeySelective(updateRole) == 1);
    }
}
