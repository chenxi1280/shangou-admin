package com.lh.shangou.pojo.query;

import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Data
public class RoleQuery extends PageQuery {

    private String name;
    private String flag;
    private String note;
    private Boolean system;
}
