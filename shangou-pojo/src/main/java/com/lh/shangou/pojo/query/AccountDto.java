package com.lh.shangou.pojo.query;

import lombok.Data;

/**
 * @author by cxd
 * @Classname AccountDto
 * @Description TODO
 * @Date 2020/8/13 9:44
 */
@Data
public class AccountDto {
    private Long id;
    private String username;
    private Long phone;
    private Gender gender;
    private String vcode;
    private String password;
    private String promotionCode;
    private String InvitationCode;
    private String clientAssertion;
    private String code;
    //省略 getter setter
}