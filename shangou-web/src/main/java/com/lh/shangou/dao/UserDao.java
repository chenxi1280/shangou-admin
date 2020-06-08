package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.User;
import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.UserVO;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;
import java.util.List;

public interface UserDao {
    int deleteByPrimaryKey(Long userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);




    UserVO selectUserByPhoneAndPassword(UserQuery query);

    UserVO selectUserByPhone(String phone);

    List<UserVO> selectUserVOByIds(@Param("ids") Collection<Long> goodsList);

    List<UserVO> ajaxList(UserQuery query);

    Integer ajaxListCount(UserQuery query);
}
