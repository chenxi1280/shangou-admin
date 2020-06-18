package com.lh.shangou.service.impl;

import com.lh.shangou.config.webmvc.WebMvcConfig;
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
import java.lang.reflect.Field;
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
        TreeSet treeSet = new TreeSet();// 就是装最后分配好的角色id
        // 1、先把权限字符串取出来进行排序操作
        // 当作查询参数,服务器也要对权限字符串进行排序
        Set<String> collect = roles.stream().map(elem -> {
            String permissions = elem.getPermissions();
            if (StringUtils.isEmpty(permissions)) {
                return "";// 这里返回空字符串才行
            } else {
                // StringUtils 和js中的join方法很强大
                String[] split = permissions.split(",");
                // 数组排序
//                Arrays.sort(split);// 从小到大排序(这里要注意的是，如果是字符串，大小排序不是按照数字来的)
                Arrays.sort(split, Comparator.comparingInt(Integer::valueOf));// 特别关键
                // 就是这个方法，就是把数组直接变成字符串
                return StringUtils.arrayToDelimitedString(split, ",");
            }
        }).collect(Collectors.toSet());
        List<Role> roles1 = roleDao.selectByPermissions(collect);
        Map<String, List<Role>> collect1 = roles1.stream().collect(Collectors.groupingBy(Role::getPermissions));
        for (Role r : roles) {
            List<Role> roles2 = collect1.get(r.getPermissions());// 从查询结果里边取角色
            if (CollectionUtils.isEmpty(roles2)) {// 结果集里边没有这个角色，就需要新增角色
                r.setSystem(false);// 不是系统级
                r.setNote("==> 新增角色：");
                // 有没有RoleId有关系吗？
                roleDao.insertSelective(r);
                treeSet.add(r.getRoleId());
            } else {
                treeSet.add(roles2.get(0).getRoleId());
            }
        }
        User u = new User();
        u.setUserId(userId);
        u.setRoles(StringUtils.collectionToDelimitedString(treeSet, ","));
        return ResponseDTO.get(userDao.updateByPrimaryKeySelective(u) == 1);
    }

    @Override
    public ResponseDTO edit(User user) {// 修改用户


        User dbUser = userDao.selectByPrimaryKey(user.getUserId());
        if (StringUtils.isEmpty(user.getPassword())) {
            user.setPassword(null);
        } else {
            // 密码是不是应该需要加密
            user.setPassword(PasswordUtil.encodePassword(user.getPassword()));
        }
        if (userDao.updateByPrimaryKeySelective(user) == 1) {
            deleteImgCache(user);// 删除现在的图片缓存
//            replaceOldFile(dbUser, user);

//          aop 如何实现

            if (!StringUtils.isEmpty(dbUser.getPhoto())) {// 每次更换图片，不管是用户，还是商品，还是任何，应该封装一个工具类
                if (dbUser.getPhoto().equals(user.getPhoto())) {
                } else {
                    if (!StringUtils.isEmpty(user.getPhoto())) {
                        WebMvcConfig.deleteFile(dbUser.getPhoto());
                    }
                }
            }
            return ResponseDTO.ok("更新成功！", user);
            // 这样做有问题？
            // 但是如果用户本身就有图片呢？原来的图片的怎么办？？把原来的图片删除
        }


        return ResponseDTO.fail("更新失败！");
    }

    @Override
    public Long selectUserIdByMerchantId(Long merchantId) {
        return userDao.selectUserIdByMerchantId(merchantId);
    }

    // 第一个参数，就传父类，如果没有父类对象，就两个参数的 class都一样
    private void replaceOldFile(Object user, Object dbUser) {
        // 1、先把父类的class找到！
        Class cls = user.getClass();
        Field[] declaredFields = dbUser.getClass().getDeclaredFields();// 只能得到一个
        User.class.getDeclaredFields();// 也能得到全部
    }
}
