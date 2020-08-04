package com.lh.shangou.service.impl;

import com.lh.shangou.consts.consts.ConfigConsts;
import com.lh.shangou.dao.AppConfigDao;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.vo.AppConfigVO;
import com.lh.shangou.service.ApprovalService;
import com.lh.shangou.service.SwiperdataService;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @Classname SwiperdataServiceImpl
 * @Description TODO
 * @Date 2020/7/26 15:47
 * @CreateComputer by PC
 * @Created by cxd
 */
@Service
public class SwiperdataServiceImpl implements SwiperdataService {

    @Resource
    RestTemplate restTemplate;

    @Resource
    AppConfigDao appConfigDao;


    @Resource
    ApprovalService appConfigService;

    @Override
    public ResponseDTO getswiperdata() {



        return null;
    }


//    /**
//     * 按照key查找值，得到字符串
//     *
//     * @return 返回key的map集合
//     */
//    protected String getSingleValueByKey(String key) {
//        List<AppConfigVO> allConfig = appConfigService.getAllConfig();
//        Map<String, List<AppConfigVO>> collect = allConfig.stream().collect(Collectors.groupingBy(AppConfig::getKey));
//        List<AppConfigVO> appConfigVOS = collect.get(key);
//        if (!CollectionUtils.isEmpty(appConfigVOS)) {
//            AppConfigVO appConfigVO = appConfigVOS.get(0);
//            return appConfigVO.getValue();
//
//        }
//        return null;
//    }

}
