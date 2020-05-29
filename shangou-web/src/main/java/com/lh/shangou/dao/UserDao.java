package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.User;
import com.lh.shangou.pojo.query.UserQuery;
import com.lh.shangou.pojo.vo.UserVO;

public interface UserDao {
    int deleteByPrimaryKey(Long userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    UserVO selectUserByPhoneAndPassword(UserQuery query);

    UserVO selectUserByPhone(String phone);
}
