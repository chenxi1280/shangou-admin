package com.lh.shangou.controller;

import com.alibaba.fastjson.JSONObject;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.WxUser;
import com.lh.shangou.pojo.vo.WxUserVO;
import com.lh.shangou.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
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
    public ResponseDTO weChatLogin(@RequestBody WxUserVO wxUserVO){


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
            URL url = new URL("https://api.weixin.qq.com/sns/jscode2session?appid=wxea78c8167e518dc4&secret=639ca02a61270690fd0a12ab4a29dd61" + "&js_code=" + wxUserVO.getCode() + "&grant_type=authorization_code");
            URLConnection open = url.openConnection();
            inputStream = open.getInputStream();
            String result = org.apache.commons.io.IOUtils.toString(inputStream, "utf-8");
            JSONObject jsonObject = JSONObject.parseObject(result);
            //拿到openid
            String openid = jsonObject.getString("openid");
            String sessionKey = jsonObject.getString("session_key");
            String unionid = jsonObject.getString("unionid");

            wxUserVO.setOpenid(openid);
            wxUserVO.setSessionkey(sessionKey);
            wxUserVO.setUnionid(unionid);
//            wxUserVO.





            return  userService.wxLogin(wxUserVO);

//            if(!StringUtils.isEmpty(openid)){
//
////                User user = new User();
////
////                userService.addUser(user);
//
//                return ResponseDTO.ok("success",openid);
//            }



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

    }
}
