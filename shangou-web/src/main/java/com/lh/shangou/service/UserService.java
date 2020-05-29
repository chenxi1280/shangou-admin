package com.lh.shangou.service;


import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.PermissionVO;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.pojo.vo.UserVO;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/21
 */
public interface UserService {

    boolean addUser();

    /**
     * 用户进行登录的方法
     *
     * @param query
     * @return
     */
    UserVO login(UserQuery query);

    List<RoleVO> selectHisRolesByPhone(String phone);

    List<PermissionVO> selectHisPermissionByRoles(List<RoleVO> roles);

    UserVO selectDbUserByPhone(UserQuery query);
}
