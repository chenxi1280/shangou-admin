package com.lh.shangou.dada.pojo.entity.merchant;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * DATE: 18/9/3
 *
 * @author: wan
 */
@Data
public class Merchant {

    private String mobile;

    private String city_name;

    private String enterprise_name;

    private String enterprise_address;

    private String contact_name;

    private String contact_phone;

    private String email;
}
