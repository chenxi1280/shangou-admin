package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.RoleQuery;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
public interface RoleService {
    PageDTO ajaxList(RoleQuery query);
}
