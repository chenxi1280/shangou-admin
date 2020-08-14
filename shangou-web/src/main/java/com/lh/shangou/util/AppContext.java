package com.lh.shangou.util;

/**
 * @author by cxd
 * @Classname AppContext
 * @Description TODO
 * @Date 2020/8/13 15:41
 */
public class AppContext implements AutoCloseable {

    private static final ThreadLocal<String> CURRENT_CONSUMER_WECHAT_OPENID = new ThreadLocal<>();
    public AppContext(String wechatOpenid) {
        CURRENT_CONSUMER_WECHAT_OPENID.set(wechatOpenid);
    }
    @Override
    public void close() {
        CURRENT_CONSUMER_WECHAT_OPENID.remove();
    }
    public static String getCurrentUserWechatOpenId() {
        return CURRENT_CONSUMER_WECHAT_OPENID.get();
    }
}