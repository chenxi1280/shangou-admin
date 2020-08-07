package com.lh.shangou.pojo.entity;

import lombok.*;

import java.io.Serializable;

/**
 * @author by cxd
 * @Classname WxUserAdd
 * @Description TODO
 * @Date 2020/8/7 17:46
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class WxUserAdd implements Serializable {
    private String nickName;
    private Integer gender;
    private String language;
    private String city;
    private String province;
    private String country;
    private String phone;
}
