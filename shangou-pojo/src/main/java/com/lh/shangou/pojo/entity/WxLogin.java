package com.lh.shangou.pojo.entity;

import lombok.Data;

/**
 * @author by cxd
 * @Classname WxLogin
 * @Description TODO
 * @Date 2020/8/5 16:30
 */
@Data
public class WxLogin {

    private String openid;
    private String sessionKey ;
    private String unionid ;

}
