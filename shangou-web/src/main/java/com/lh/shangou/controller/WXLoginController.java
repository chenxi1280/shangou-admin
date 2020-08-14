package com.lh.shangou.controller;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.support.spring.annotation.FastJsonView;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.WxUser;
import com.lh.shangou.pojo.query.AccountDto;
import com.lh.shangou.pojo.query.WxUserQuery;
import com.lh.shangou.pojo.vo.WxUserVO;
import com.lh.shangou.service.UserService;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.HashMap;

/**
 * @author by cxd
 * @Classname WXLoginController
 * @Description TODO
 * @Date 2020/8/5 13:20
 */
@Controller
@RequestMapping("/weChatLogin")
public class WXLoginController {


    @Resource
    UserService userService;

    @ResponseBody
    @RequestMapping("/getOpenid")
    public ResponseDTO weChatLogin(@RequestBody WxUserQuery wxUserQuery ){


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
         rawData
         */
//        wx0153e026b12bc318
//        639ca02a61270690fd0a12ab4a29dd61
        //第三步：调用service.weChatLogin(model):后台检查openid是否存在，返回openid对应的用户

        InputStream inputStream = null;
        try {
            URL url = new URL("https://api.weixin.qq.com/sns/jscode2session?appid=wxea78c8167e518dc4&secret=639ca02a61270690fd0a12ab4a29dd61" + "&js_code="+wxUserQuery.getCode()  + "&grant_type=authorization_code");
            URLConnection open = url.openConnection();
            inputStream = open.getInputStream();
            String result = org.apache.commons.io.IOUtils.toString(inputStream, "utf-8");
            JSONObject jsonObject = JSONObject.parseObject(result);
            //拿到openid
            String openid = jsonObject.getString("openid");
            String sessionKey = jsonObject.getString("session_key");
            String unionid = jsonObject.getString("unionid");
            WxUser wxUser = new WxUser();
            wxUser.setOpenid(openid);


            return  userService.wxLogin(wxUser);


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


    }

    @PostMapping("/updateConsumerInfo")
    @ResponseBody
    public void updateConsumerInfo(@RequestBody WxUser wxUser, HttpServletRequest request) {
        String token = request.getHeader("Authorization");
        Enumeration headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            HashMap<String, String> objectObjectHashMap = new HashMap<>();
            String key = (String) headerNames.nextElement();
            String value = request.getHeader(key);
            objectObjectHashMap.put(key, value);
        }
        wxUser.setOpenid(token);
        userService.updateConsumerInfo(wxUser);
    }



}
