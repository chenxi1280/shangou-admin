package com.lh.shangou.controller;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.vo.UserVO;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Base64;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
public class LoginController extends BaseController {


    @RequestMapping("/login")
    @ResponseBody
    ResponseDTO login(UserVO u) {// 这个方法是执行登录操作的
        // 获取subject
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(u.getPhone(), u.getPassword());
        getSession().setAttribute("code", u.getCode());
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(usernamePasswordToken);// 只要 执行login方法，那么它就会跑到userRealm里边的认证方法（doGetAuthenticationInfo）
        } catch (AuthenticationException a) {
//            a.printStackTrace();
            return ResponseDTO.fail(a.getMessage());
        }
        return ResponseDTO.ok("登录成功");
    }

    // 这个方法是跳转到登录页面用的
    @RequestMapping("/loginPage")
    String loginPage() {




        return "loginPage";


    }

    // 这个方法是跳转到登录页面用的,退出App
    @RequestMapping("/logoutApp")
    String logoutApp() {
        SecurityUtils.getSubject().logout();
        return "loginPage";
    }

    // 这个方法是跳转到登录页面用的
    @RequestMapping("/pages/back/loginSuccess")
    String loginSuccess() {
        return "pages/back/home";
    }


}
