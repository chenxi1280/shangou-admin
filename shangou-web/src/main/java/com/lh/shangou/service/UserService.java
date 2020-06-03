package com.lh.shangou.service;


import com.lh.shangou.pojo.entity.User;
import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.PermissionVO;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.pojo.vo.UserVO;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/21
 */
public interface UserService extends BaseService {

    UserVO addUser(User u);

    /**
     * 用户进行登录的方法
     *
     * @param query
     * @return
     */
    UserVO login(UserQuery query);

    List<RoleVO> selectHisRolesByPhone(String phone);

    // 根据角色直接就能查询这些角色的权限
    List<PermissionVO> selectHisPermissionByRoles(List<RoleVO> roles);


    UserVO selectDbUserByPhone(UserQuery query);

    // 检测用户是否存在
    boolean checkPhoneExist(String phone);
}
