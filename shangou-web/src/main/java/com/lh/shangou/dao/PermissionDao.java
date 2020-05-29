package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.Permission;
import com.lh.shangou.pojo.vo.PermissionVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface PermissionDao {
    int deleteByPrimaryKey(Integer permissionId);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(Integer permissionId);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);

    List<PermissionVO> selectPermissionsByIds(String permissions);

    List<PermissionVO> selectPermissionsBySet(@Param("ids") Set<String> paramSet);
}
