package com.lh.shangou.service.impl;

import com.lh.shangou.dao.PermissionDao;
import com.lh.shangou.dao.RoleDao;
import com.lh.shangou.dao.UserDao;
import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.PermissionVO;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.pojo.vo.UserVO;
import com.lh.shangou.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/5/21
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserDao userDao;

    @Resource
    RoleDao roleDao;

    @Resource
    PermissionDao permissionDao;

    @Override
    public boolean addUser() {
        return false;
    }

    @Override
    public UserVO login(UserQuery query) {
        return userDao.selectUserByPhoneAndPassword(query);
    }

    @Override
    public List<RoleVO> selectHisRolesByPhone(String phone) {
        UserVO u = userDao.selectUserByPhone(phone);
        if (!StringUtils.isEmpty(u.getRoles())) {

            List<RoleVO> roles = roleDao.selectHisRolesByRoles(u.getRoles());
            // 在查询完成roles之后，我们应该 roles的permissionVOS赋值
            if (!CollectionUtils.isEmpty(roles)) {
                List<PermissionVO> permissionVOS = this.selectHisPermissionByRoles(roles);// 查出所有的权限
                return getRoleVOList(roles, permissionVOS);
            }


        }
        return null;
    }

    @Override
    public List<PermissionVO> selectHisPermissionByRoles(List<RoleVO> roles) {
        List<PermissionVO> list = new ArrayList<>();
//        // 第一种 ：
//        for (RoleVO role : roles) {
//            List<PermissionVO> permissionVOS = permissionDao.selectPermissionsByIds(role.getPermissions());
//            list.addAll(permissionVOS);
////            Collections.addAll(list, permissionVOS);// 这里有个把两个集合加入到一个集合里边去
//        }
        // 断言工具
//        Assert.notNull(roles, "传递的集合为null");
        if (!CollectionUtils.isEmpty(roles)) {
            Set<String> paramSet = new TreeSet<>();// 查询参数集合
            for (RoleVO role : roles) {// 在内存之中进行的。效率基本最高的
                String psIds = role.getPermissions();// 1,2,34
                if (!StringUtils.isEmpty(psIds)) {
                    Collections.addAll(paramSet, psIds.split(","));
                }
            }
            if (!CollectionUtils.isEmpty(paramSet)) {
                list = permissionDao.selectPermissionsBySet(paramSet);
            }

        }
        // 第三种
        return list;
    }

    @Override
    public UserVO selectDbUserByPhone(UserQuery query) {
        return userDao.selectUserByPhone(query.getPhone());
    }

    @Override
    public boolean checkPhoneExist(String phone) {
        return userDao.selectUserByPhone(phone) != null;
    }


}
