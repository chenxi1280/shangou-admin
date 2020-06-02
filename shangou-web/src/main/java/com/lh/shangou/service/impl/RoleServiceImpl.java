package com.lh.shangou.service.impl;

import com.lh.shangou.dao.PermissionDao;
import com.lh.shangou.dao.RoleDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.query.RoleQuery;
import com.lh.shangou.pojo.vo.PermissionVO;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.service.RoleService;
import com.lh.shangou.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Resource
    RoleDao roleDao;
    @Resource
    PermissionDao permissionDao;

    @Resource
    UserService userService;

    @Override
    public PageDTO ajaxList(RoleQuery query) {
        List<RoleVO> roleVOS = roleDao.ajaxList(query);// 只查出了角色，并没有根据角色id查询权限
        Integer count = roleDao.ajaxListCount(query);
        if (!CollectionUtils.isEmpty(roleVOS)) {
            List<PermissionVO> permissionVOS = userService.selectHisPermissionByRoles(roleVOS);
            roleVOS = getRoleVOList(roleVOS, permissionVOS);
        }
        return PageDTO.setPageData(count, roleVOS);
    }

    @Override
    public ResponseDTO editRole(Role role) {
        return ResponseDTO.get(roleDao.updateByPrimaryKeySelective(role) == 1);
    }

    @Override
    public ResponseDTO deleteRoles(List<Role> roles) {
        int x = roleDao.deleteByPrimaryKeys(roles);
        return ResponseDTO.get(x == roles.size());
    }

    @Override
    public PageDTO getSystemRoles() {
        List<RoleVO> roleVOS = roleDao.getSystemRoles();

        return PageDTO.setPageData(roleVOS.size(), roleVOS);
    }
}
