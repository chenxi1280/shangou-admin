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
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.*;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;

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
        //r.setPermissions(role.getPermissions());
        // 第一步：先把原来的权限取出来,Collections.singletonList将单个元素变成 单个元素的集合
        //List<PermissionVO> permissionVOS = userService.selectHisPermissionByRoles(Collections.singletonList(r));
        TreeSet<Integer> set1 = stringToTreeSet(role.getPermissions());
        TreeSet<Integer> set2 = r.getPermissionVOS().stream().map(Permission::getPermissionId).collect(Collectors.toCollection(TreeSet::new));
        set1.addAll(set2);
        //permissionVOS.addAll(r.getPermissionVOS());// 把传过来的新的权限集合和原来的权限集合合并成一体
//        TreeSet<Integer> treeSet = new TreeSet<>();
//        for (PermissionVO p : permissionVOS) {
//            treeSet.add(p.getPermissionId());
//        }
//        // 走到这一步，那么treeSet集合里边就拥有了本身的权限了和传过来的权限都有了

        String pStr = collectionToStr(set1);
        Role updateRole = new Role();
        updateRole.setRoleId(r.getRoleId());
        updateRole.setPermissions(pStr);
        return ResponseDTO.get(roleDao.updateByPrimaryKeySelective(updateRole) == 1);
    }

    // 这个方法跟上面方法太多代码重复，建议抽离出来
    @Override
    public ResponseDTO removePermissionFromRole(RoleVO r) {
        Role role = roleDao.selectByPrimaryKey(r.getRoleId());
//        r.setPermissions(role.getPermissions());

        // 第一步：先把原来的权限取出来,Collections.singletonList将单个元素变成 单个元素的集合
        //List<PermissionVO> permissionVOS = userService.selectHisPermissionByRoles(Collections.singletonList(r));
        // 这里的移除，不能简单的使用 permissionVOS.removeAll(r.getPermissionVOS())，这样是移除不了的。这个时候我们可以用stream处理
        // 这波操作能看懂就行，把集合中的id 通过 map收集起来，并且收集成为一个TreeSet集合
//        TreeSet<Integer> collect = permissionVOS.stream().map(Permission::getPermissionId).collect(Collectors.toCollection(TreeSet::new));
        TreeSet<Integer> collect = stringToTreeSet(role.getPermissions());
        // 得到现在要移除的权限集合
        TreeSet<Integer> collect1 = r.getPermissionVOS().stream().map(Permission::getPermissionId).collect(Collectors.toCollection(TreeSet::new));
//        TreeSet<Integer> collect1 = stringToTreeSet(r.getPermissions());
        collect.removeAll(collect1);// 把传过来的新的权限集合从老的权限里边移除
        String pStr = collectionToStr(collect);
        Role updateRole = new Role();
        updateRole.setRoleId(r.getRoleId());
        updateRole.setPermissions(pStr);
        return ResponseDTO.get(roleDao.updateByPrimaryKeySelective(updateRole) == 1);
    }


    @Override
    public ResponseDTO add(Permission permission) {
        return ResponseDTO.get(permissionDao.insertSelective(permission) == 1);
    }
}
