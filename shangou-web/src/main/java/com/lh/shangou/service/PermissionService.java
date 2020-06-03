package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Permission;
import com.lh.shangou.pojo.query.PermissionQuery;
import com.lh.shangou.pojo.vo.RoleVO;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/2
 */
public interface PermissionService extends BaseService {
    PageDTO ajaxList(PermissionQuery query);

    ResponseDTO editPermission(Permission permission);

    ResponseDTO deletePermissions(List<Permission> permissions);

    ResponseDTO addPermissionToRole(RoleVO r);

    ResponseDTO removePermissionFromRole(RoleVO roleVO);

    ResponseDTO add(Permission permission);
}
