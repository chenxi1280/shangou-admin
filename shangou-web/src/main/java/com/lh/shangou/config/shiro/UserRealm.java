package com.lh.shangou.config.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * creator：Administrator
 * date:2019/10/22
 * shiro认证和授权的 一个类（领域类）
 */

public class UserRealm extends AuthorizingRealm {
    Logger logger = LoggerFactory.getLogger(UserRealm.class);


    /**
     * 认证身份用的
     * subject.login(token)调用之后，会进入到这个方法
     *
     * @param authenticationToken 携带了用户名和密码的：认证，判断用户名和密码跟数据库里边是否一致
     * @return
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        Object principal = authenticationToken.getPrincipal();// 获取身份（用户名）
        Object credentials = authenticationToken.getCredentials();// 获取密码（密码）：是前端传递来的，不具备真实性

        // 设置角色
        // 设置权限
        return new SimpleAuthenticationInfo(authenticationToken.getPrincipal(), authenticationToken.getCredentials(), "userRealm");
    }

    /**
     * 对身份进行授权用的
     *
     * @param principalCollection
     * @return
     * @throws AuthenticationException 根据用户名去数据库查询这个 用户的角色和权限设置给 这个SimpleAuthorizationInfo对象即可
     *                                 <p>
     *                                 只有第一次判断的时候，才能进入授权方法，如果当前用户没有这个权限或者角色，那么将会被缓存到内存之中，第二次之后，就不用查询了
     */

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {// 登录成功之后，给用户授予角色和权限用的，或者说检测用户的角色和权限的
        SimpleAuthorizationInfo auth = new SimpleAuthorizationInfo();


        return auth;

    }

}
