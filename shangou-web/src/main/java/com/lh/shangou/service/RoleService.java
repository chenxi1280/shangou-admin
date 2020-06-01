package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.query.RoleQuery;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
public interface RoleService extends BaseService {
    PageDTO ajaxList(RoleQuery query);

    ResponseDTO editRole(Role role);
}
