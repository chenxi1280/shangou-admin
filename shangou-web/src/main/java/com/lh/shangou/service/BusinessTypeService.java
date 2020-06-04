package com.lh.shangou.service;

import com.lh.shangou.pojo.entity.BusinessType;
import com.lh.shangou.pojo.vo.BusinessTypeVO;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
public interface BusinessTypeService {

    /**
     * 获取所有的经营类型，顶级经营类型里边需要带上children经营类型
     *
     * @return
     */
    List<BusinessTypeVO> getTypes();
}
