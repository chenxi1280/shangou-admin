package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.BusinessType;
import com.lh.shangou.pojo.vo.BusinessTypeVO;

import java.util.List;

public interface BusinessTypeDao {
    int deleteByPrimaryKey(Integer typeId);

    int insert(BusinessType record);

    int insertSelective(BusinessType record);

    BusinessType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(BusinessType record);

    int updateByPrimaryKey(BusinessType record);

    // 查询全部的经营类型，扫表操作（慎用，数据量小的时候）
    List<BusinessTypeVO> selectAll();

}
