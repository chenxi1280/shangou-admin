package com.lh.shangou.pojo.query;

import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/5/25
 */
@Data
public class UserQuery extends PageQuery {
    private String password, phone;
}
