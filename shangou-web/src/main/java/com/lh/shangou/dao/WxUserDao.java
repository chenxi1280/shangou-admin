package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.WeChatLoginModel;
import com.lh.shangou.pojo.entity.WxUser;
import com.lh.shangou.pojo.vo.WxUserVO;

public interface WxUserDao {

    int deleteByPrimaryKey(Integer pkId);

    int insert(WxUser record);

    int insertSelective(WxUser record);

    WxUser selectByPrimaryKey(Integer pkId);

    int updateByPrimaryKeySelective(WxUser record);

    int updateByPrimaryKey(WxUser record);

    WxUserVO selectByOpenId(WeChatLoginModel weChatLoginModel);

}