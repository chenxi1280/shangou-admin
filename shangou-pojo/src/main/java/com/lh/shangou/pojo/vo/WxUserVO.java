package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.WxUser;
import lombok.Data;

import java.util.Date;

/**
 * @Classname WxUserVO
 * @Description TODO
 * @Date 2020/8/3 21:48
 * @CreateComputer by PC
 * @Created by cxd
 */
@Data
public class WxUserVO  {

    private Integer pkId;
    private Integer fkUserid;
    private String openid;
    private String nickname;
    private String avatarurl;
    private Integer gender;
    private String varchar;
    private String province;
    private String city;
    private String language;
    private Date ctime;
    private String mobile;
    private String authorized;

}
