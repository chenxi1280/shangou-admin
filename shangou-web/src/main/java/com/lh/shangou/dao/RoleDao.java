package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.Role;
import com.lh.shangou.pojo.query.RoleQuery;
import com.lh.shangou.pojo.vo.RoleVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface RoleDao {
    int deleteByPrimaryKey(Integer roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    List<RoleVO> selectHisRolesByRoles(String phone);

    List<RoleVO> ajaxList(RoleQuery query);

    Integer ajaxListCount(RoleQuery query);

    // 批量删除roles
    int deleteByPrimaryKeys(@Param("ids") List<Role> roles);

    List<RoleVO> getSystemRoles();

    List<Role> selectByPermissions(@Param("ids") Set<String> collect);


}
