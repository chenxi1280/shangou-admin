package com.lh.shangou.service.impl;

import com.lh.shangou.dao.PermissionDao;
import com.lh.shangou.dao.RoleDao;
import com.lh.shangou.dao.UserDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.entity.User;
import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.PermissionVO;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.pojo.vo.UserVO;
import com.lh.shangou.service.UserService;
import com.lh.shangou.util.password.PasswordUtil;
import com.sun.org.apache.regexp.internal.RE;
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
    public UserVO addUser(User u) {
        int x = userDao.insertSelective(u);
        if (x == 1) {
            UserVO uVO = new UserVO();
            uVO.setUserId(u.getUserId());
            uVO.setNickName(u.getNickName());
            uVO.setPhone(u.getPhone());
            return uVO;
        }
        return null;
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

    @Override
    public PageDTO ajaxList(UserQuery query) {
        List<UserVO> userVOS = userDao.ajaxList(query);


        Integer count = userDao.ajaxListCount(query);

        return PageDTO.setPageData(count, userVOS);
    }

    @Override
    public void updateUser(User u) {
        userDao.updateByPrimaryKeySelective(u);
    }

    @Override
    public ResponseDTO dispatchUserPermission(Long userId, List<Role> roles) {
        // 1、先把角色中的权限字符串取出来，因为要根据权限字符串去查询角色是否存在
        // 2、为了保险起见，应该让这些权限按照从小到大的顺序排序
        Set<String> collect = roles.stream().map(e -> {
            String pStr = e.getPermissions();
            if (StringUtils.isEmpty(pStr)) {
                return "";
            } else {
                String[] split = pStr.split(",");
                Arrays.sort(split, Comparator.comparingInt(Integer::valueOf));
                return StringUtils.arrayToDelimitedString(split, ",");
            }
        }).collect(Collectors.toSet());// 把所有角色中的权限字符串取出来当成一个查询参数set
        List<Role> dbRoles = roleDao.selectByPermissions(collect);
        Map<String, List<Role>> collect1 = dbRoles.stream().collect(Collectors.groupingBy(Role::getPermissions));
        TreeSet treeSet = new TreeSet();
        for (Role r : roles) {
            List<Role> roles1 = collect1.get(r.getPermissions());
            if (CollectionUtils.isEmpty(roles1)) {// 没这个权限组，那么就需要新增权限组
                r.setSystem(false);
                r.setNote("==>新增分配角色：");
                roleDao.insertSelective(r);
                treeSet.add(r.getRoleId());
            } else {// 已经有这个权限组了，那么直接把这个权限组加入到事先准备好的treeSet里边
                treeSet.add(roles1.get(0).getRoleId());
            }
        }
        String s = StringUtils.collectionToDelimitedString(treeSet, ",");
        User u = new User();
        u.setUserId(userId);
        u.setRoles(s);
        return ResponseDTO.get(userDao.updateByPrimaryKeySelective(u) == 1);
    }

    @Override
    public ResponseDTO edit(User user) {
        if (StringUtils.isEmpty(user.getPassword())) {
            user.setPassword(null);
        } else {// 要对密码加密
            user.setPassword(PasswordUtil.encodePassword(user.getPassword()));
        }
        if (userDao.updateByPrimaryKeySelective(user) == 1) {

            deleteImgCache(user);// 删除缓存图片
            return ResponseDTO.ok("修改成功！", user);
        }
        return ResponseDTO.fail("修改失败");
    }
}
