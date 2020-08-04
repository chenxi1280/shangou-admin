package com.lh.shangou.config.wx;

/**
 * @Classname WxAppConfig
 * @Description TODO
 * @Date 2020/7/28 23:51
 * @CreateComputer by PC
 * @Created by cxd
 */
public class WxAppConfig {
    // 请求的网址
    public static final String WX_LOGIN_URL = "https://api.weixin.qq.com/sns/jscode2session";
    // 你的appid
    public static final String WX_LOGIN_APPID = "xxxxxxxxxxxxxxxxxx";
    // 你的密匙
    public static final String WX_LOGIN_SECRET = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
    // 固定参数
    public static final String WX_LOGIN_GRANT_TYPE = "authorization_code";
}
