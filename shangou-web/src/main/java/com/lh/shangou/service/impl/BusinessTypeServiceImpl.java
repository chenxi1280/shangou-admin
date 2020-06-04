package com.lh.shangou.service.impl;

import com.lh.shangou.dao.BusinessTypeDao;
import com.lh.shangou.pojo.entity.BusinessType;
import com.lh.shangou.pojo.vo.BusinessTypeVO;
import com.lh.shangou.service.BusinessTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
@Service
public class BusinessTypeServiceImpl implements BusinessTypeService {
    @Resource
    BusinessTypeDao businessTypeDao;

    @Override
    public List<BusinessTypeVO> getTypes() {
        // 第一步，查询全部的经营类型
        List<BusinessTypeVO> all = businessTypeDao.selectAll();
        // 第二步，找出所有顶级经营类型
        List<BusinessTypeVO> parents = all.stream().filter(t -> t.getParentId() == 0).collect(Collectors.toList());
        for (BusinessTypeVO b : parents) {
            // 再根据每个顶级类型的id，找出其对应的children
            List<BusinessTypeVO> children = all.stream().filter(t -> t.getParentId().equals(b.getTypeId())).collect(Collectors.toList());
            b.setChildren(children);
        }

        return parents;
    }
}
