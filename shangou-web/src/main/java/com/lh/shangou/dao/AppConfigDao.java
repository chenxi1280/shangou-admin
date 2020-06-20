package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.query.AppConfigQuery;
import com.lh.shangou.pojo.query.PageQuery;
import com.lh.shangou.pojo.vo.AppConfigVO;

import java.util.List;

public interface AppConfigDao {
    int deleteByPrimaryKey(Integer configId);

    int insert(AppConfig record);

    int insertSelective(AppConfig record);

    AppConfig selectByPrimaryKey(Integer configId);

    int updateByPrimaryKeySelective(AppConfig record);

    int updateByPrimaryKey(AppConfig record);

    List<AppConfigVO> ajaxList(PageQuery appConfig);

    Integer ajaxListCount(PageQuery appConfig);

    List<AppConfigVO> getAllConfig();

}
