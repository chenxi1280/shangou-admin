package com.lh.shangou.service.impl;

import com.lh.shangou.dao.AppConfigDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.query.AppConfigQuery;
import com.lh.shangou.pojo.query.PageQuery;
import com.lh.shangou.pojo.vo.AppConfigVO;
import com.lh.shangou.service.AppConfigService;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.List;
import java.util.function.Function;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */
@Service
public class AppConfigServiceImpl implements AppConfigService {

    @Resource
    RestTemplate restTemplate;

    @Resource
    AppConfigDao appConfigDao;

    @Override
    public ResponseDTO add(AppConfig appConfig) {

        if (appConfig.getIsJson() == null) {
            appConfig.setIsJson(false);
        }
        return ResponseDTO.get(appConfigDao.insertSelective(appConfig) == 1);
    }

    @Override
    public PageDTO ajaxList(AppConfigQuery appConfig) {
        return splitPage(appConfig, appConfigDao::ajaxList, appConfigDao::ajaxListCount);
    }

    @Override
    public ResponseDTO delete(Integer id) {
        return ResponseDTO.get(appConfigDao.deleteByPrimaryKey(id) == 1);
    }

    @Override
    public ResponseDTO edit(AppConfig a) {
        return ResponseDTO.get(appConfigDao.updateByPrimaryKeySelective(a) == 1);
    }

    @Override
    public List<AppConfigVO> getAllConfig() {
        return appConfigDao.getAllConfig();
    }

    @Override
    public ResponseDTO getNewData(AppConfig a) {
//        class="swiper-wrapper"
        String forObject = restTemplate.getForObject("https://daojia.jd.com/html/index.html",String.class);
        List<String> imgStrToList = getImgStrToList(forObject);


        System.err.println(imgStrToList);


        return null;
    }


}
