package com.lh.shangou.controller;

import com.alibaba.fastjson.JSONObject;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.User;
import com.lh.shangou.pojo.entity.WeChatLoginModel;
import com.lh.shangou.pojo.vo.UserVO;
import com.lh.shangou.pojo.vo.WxUserVO;
import com.lh.shangou.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.jdbc.support.CustomSQLErrorCodesTranslation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Base64;
import java.util.HashMap;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
public class LoginController extends BaseController {

    @Resource
    UserService userService;


    @ResponseBody
    @RequestMapping("/getOpenid")
    public ResponseDTO weChatLogin(@RequestParam HashMap<String, Object> params){


        /**
         * 登录日志：
         * id\ userid\ date\ wx_code\ createTime
         * create table loginLog (
         id varchar(50) primary key,
         userId varchar(50),
         logindate date,
         wxcode varchar(100),
         createtime datetime
         );
         */


        //第三步：调用service.weChatLogin(model):后台检查openid是否存在，返回openid对应的用户

        InputStream inputStream = null;
        try {
            URL url = new URL("https://api.weixin.qq.com/sns/jscode2session?appid=" + params.get("appid") + "&secret=" + params.get("secret") + "&js_code=" + params.get("code") + "&grant_type=authorization_code");
            URLConnection open = url.openConnection();
            inputStream = open.getInputStream();
            String result = org.apache.commons.io.IOUtils.toString(inputStream, "utf-8");
            JSONObject jsonObject = JSONObject.parseObject(result);
            //拿到openid
            String openid = jsonObject.getString("openid");

            if(!StringUtils.isEmpty(openid)){

//                User user = new User();
//
//                userService.addUser(user);

                return ResponseDTO.ok("success",openid);
            }



        } catch (Exception e) {


            return ResponseDTO.fail("error");


        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

//
//        //第四步：
//        UserAccount user = loginResult.getUser();
//        if(user == null ){
//            result.setCode(0);
//            result.setMessage("登录失败");
//        }
//        else {
//            User u = new User();
////            u.setId(user.getId());
////            u.setPassword(user.getPassword() == null ? user.getWxopenid() : user.getPassword());
////            u.setSessionKey(loginResult.getSession_key());
////            String token = getToken(u);
////            result.setToken(token);
////            result.setCode(1);
////            result.setMessage("登陆成功");
//        }

        return ResponseDTO.fail("error");
    }


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


            return "forward:/pages/front/user/userInfo";// 应该跳转到客户端我的界面
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
        return "forward:/pages/front/user/userInfo";
    }


}
