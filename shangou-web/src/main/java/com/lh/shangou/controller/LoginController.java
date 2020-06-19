package com.lh.shangou.controller;

import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.vo.UserVO;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Base64;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
public class LoginController extends BaseController {


    @RequestMapping("/login")
    @ResponseBody
    ResponseDTO login(UserVO u, boolean isBack) {// 这个方法是执行登录操作的
        // 获取subject
        if (!isBack) {// 就应该设置一个标记
            if (!StringUtils.isEmpty(u.getCode())) {// 就代表是验证码登录或者注册
                getSession().setAttribute("isBack", false);// 不是后台登录
            }
        }
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
    String loginPage(HttpServletRequest request, boolean isBack, Model model) {// 是否是后台登录
        // 就应该判断以下 是来自于哪个访问路径的
        if (isBack) {
            return "loginPage";
        }
        // 不是后台登录，就是前端登录
        SavedRequest savedRequest = WebUtils.getSavedRequest(request);// shiro保存拦截之前的请求对象
        if (savedRequest != null) {
            String queryString = savedRequest.getQueryString();// 获取参数字符串
            if ("/pages/back/merchant/addPre".equals(savedRequest.getRequestURI())) {// 证明此时shiro拦截的是客户端
                return "client-loginPage";
            }
        }
        return "client-loginPage";
    }

    // 这个方法是跳转到登录页面用的,退出App
    @RequestMapping("/logoutApp")
    String logoutApp() {
        SecurityUtils.getSubject().logout();
        return "loginPage";
    }

    // 这个方法是跳转到登录页面用的
    @RequestMapping("/pages/back/loginSuccess")
    String loginSuccess(boolean isBack, HttpServletRequest request) {
        if (isBack) {
            return "pages/back/home";// 跳转到后台管理界面
        } else {
            // 不是后台登录，就是前端登录
            SavedRequest savedRequest = WebUtils.getSavedRequest(request);// shiro保存拦截之前的请求对象
            if (savedRequest != null) {
                String queryString = savedRequest.getQueryString();// 获取参数字符串,有被拦截的路径，就跳转回拦截之前的那个路径
                // "/pages/back/merchant/addPre"
                return "redirect:" + savedRequest.getRequestURI() + "?" + queryString;
            }
            return "pages/front/client/my-info";// 应该跳转到客户端我的界面
        }
    }

    // 这个方法是跳转到登录页面用的
    @RequestMapping("/pages/back/dashBoard")
    String dashBoard() {
        return "pages/back/dashboard/dashboard";// 应该跳转到客户端我的界面

    }

    @RequestMapping("clientLogout")
// 自定义shiro注销后去访问的页面
    String clientLogout(Model model) {
        SecurityUtils.getSubject().logout();// 注销,并且调转到用户信息
        return "pages/front/user/user-info";
    }


}
