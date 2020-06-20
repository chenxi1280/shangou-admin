package com.lh.shangou.service;

import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.query.AppConfigQuery;
import com.lh.shangou.pojo.vo.AppConfigVO;

import java.util.HashMap;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */
public interface AppConfigService extends BaseService {
    public ResponseDTO add(AppConfig appConfig);

    PageDTO ajaxList(AppConfigQuery appConfig);

    ResponseDTO delete(Integer id);

    ResponseDTO edit(AppConfig a);

    // 获取系统配置
    List<AppConfigVO> getAllConfig();

    /**
     * 设置新的数据（图片文字等）
     *
     * @param a
     * @return
     */
    ResponseDTO getLatestData(AppConfig a);

    /**
     * 设置我的页面最新的数据
     *
     * @param a
     * @return
     */
    ResponseDTO getUserInfoLatestData(AppConfig a);
}
