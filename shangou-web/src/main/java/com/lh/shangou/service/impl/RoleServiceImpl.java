package com.lh.shangou.service.impl;

import com.lh.shangou.dao.RoleDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.query.RoleQuery;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Resource
    RoleDao roleDao;


    @Override
    public PageDTO ajaxList(RoleQuery query) {
        List<RoleVO> roleVOS = roleDao.ajaxList(query);
        Integer count = roleDao.ajaxListCount(query);
        return PageDTO.setPageData(count, roleVOS);
    }
}
