package com.lh.shangou.service.impl;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.consts.consts.ConfigConsts;
import com.lh.shangou.dao.AppConfigDao;
import com.lh.shangou.pojo.dto.JDRes;
import com.lh.shangou.pojo.dto.JDUserRes;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.query.AppConfigQuery;
import com.lh.shangou.pojo.vo.AppConfigVO;
import com.lh.shangou.pojo.vo.ButtonGroupVO;
import com.lh.shangou.service.AppConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */
@Service
public class AppConfigServiceImpl implements AppConfigService {

    Logger log = LoggerFactory.getLogger(AppConfigServiceImpl.class);

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
    public ResponseDTO getLatestData(AppConfig a) {

        String url = "https://daojia.jd.com/client?_jdrandom=1592651512464&platCode=h5&appName=paidaojia&channel=&appVersion=7.8.0&jdDevice=&functionId=indexh5%2FgetIndex&body=%7B%22address%22:%22%E6%B8%9D%E6%B1%87%E6%BA%90%E5%B0%8F%E5%8C%BA%22,%22city%22:%22%E9%87%8D%E5%BA%86%E5%B8%82%22,%22longitude%22:106.63056,%22latitude%22:29.717783,%22coordType%22:%222%22,%22currentPage%22:%22%22,%22storeId%22:%22%22,%22activityId%22:%22%22,%22h5From%22:%22%22,%22isglb%22:%22%22,%22previewDate%22:null,%22isIndex%22:false,%22pageSource%22:%22home%22,%22ref%22:%22%22,%22ctp%22:%22home%22%7D&lng=106.63056&lat=29.717783&city_id=4&poi=%E6%B8%9D%E6%B1%87%E6%BA%90%E5%B0%8F%E5%8C%BA&jda=76161171.945875466.1586587548.1591625165.1592651493.5&traceId=H5_DEV_DA47D8A0-52D2-4347-9CB6-9FEAD4EBAFF11592651512464&deviceId=H5_DEV_DA47D8A0-52D2-4347-9CB6-9FEAD4EBAFF1&signKeyV1=d2bdfc08aad625103125ee95eecaa1bddb8a9b1721929ec1b53e6baa30a401af";
        JDRes result = restTemplate.getForObject(url, JDRes.class);
        AppConfig appConfig = new AppConfig();
        appConfig.setKey(ConfigConsts.headerImg);
        JDRes.ResultBean res = result.getResult();

        if (res != null) {
            JDRes.ResultBean.ConfigBean config = res.getConfig();
            appConfig.setValue(config.getSearchConfig().getBorderImg());
            appConfigDao.updateByKeySelective(appConfig);// 修改头部图片
            Set<String> words = config.getSearchConfig().getRecommendKeyList().stream().map(JDRes.ResultBean.ConfigBean.SearchConfigBean.RecommendKeyListBean::getTitle).collect(Collectors.toSet());

            appConfig.setKey(ConfigConsts.hostWords);
            appConfig.setValue(JSON.toJSONString(words));
            appConfigDao.updateByKeySelective(appConfig);// 修改关键字

            List<JDRes.ResultBean.DataBeanXX.DataBeanX> list = res.getData().get(0).getData();

            for (JDRes.ResultBean.DataBeanXX.DataBeanX d : list) {
                int index = d.getIndex();
                switch (index) {
                    case 10:// 轮播图
                        // 0:轮播图index是0
                        Set<String> imgs = d.getData().stream().map(e -> e.getFloorCellData().getImgUrl()).collect(Collectors.toSet());
                        appConfig.setKey(ConfigConsts.indexImgs);
                        appConfig.setValue(JSON.toJSONString(imgs));

                        break;
                    case 20: //  活动动图
                        // 1 floorBanner那个活动的动图
                        String imgUrl = d.getData().get(0).getFloorCellData().getImgUrl();
                        appConfig.setKey(ConfigConsts.floorBanner);
                        appConfig.setValue(imgUrl);
                        break;
                    case 30: //  活动动图
                        // 2 indexMenu是图标按钮组
                        appConfigDao.updateByKeySelective(appConfig);// 修改菜单按钮
                        Set<ButtonGroupVO> buttonGroupVOSet = d.getData().stream().map(e -> {
                            ButtonGroupVO b = new ButtonGroupVO();
                            b.setImg(e.getFloorCellData().getImgUrl());
                            b.setText(e.getFloorCellData().getTitle());
                            b.setUrl("没得地址");
                            return b;
                        }).collect(Collectors.toSet());
                        appConfig.setKey(ConfigConsts.indexMenu);
                        appConfig.setValue(JSON.toJSONString(buttonGroupVOSet));
                        break;
                    case 40: //  会员图片
                        Set<String> vipImgs = d.getData().stream().map(e -> e.getFloorCellData().getImgUrl()).collect(Collectors.toSet());
                        appConfig.setKey(ConfigConsts.vipImgs);
                        appConfig.setValue(JSON.toJSONString(vipImgs));
                        break;
                    case 41: //  会员图片
                        appConfig.setKey(ConfigConsts.newPerson);
                        appConfig.setValue(d.getData().get(0).getFloorCellData().getImgUrl());
                        break;
                }
                appConfigDao.updateByKeySelective(appConfig);// 修改轮播图
            }
        }
        return ResponseDTO.ok("操作成功！");
    }

    @Override
    public ResponseDTO getUserInfoLatestData(AppConfig a) {
        a = new AppConfig();// 初始化
        // 请求接口：怎么拿？
        String url = "https://daojia.jd.com/client?_jdrandom=1592668544393&platCode=H5&appName=paidaojia&channel=&appVersion=7.8.0&jdDevice=&functionId=mine%2FgetClassifyModuleInfo&body=%7B%22fromSource%22:2,%22channelType%22:8,%22cityId%22:4,%22platform%22:3,%22longtitude%22:106.63056,%22latitude%22:29.717783,%22pageSource%22:%22myinfo%22,%22ref%22:%22myinfo%22,%22ctp%22:%22myinfo%22%7D&lng=106.63056&lat=29.717783&city_id=4&poi=%E6%B8%9D%E6%B1%87%E6%BA%90%E5%B0%8F%E5%8C%BA&jda=76161171.945875466.1586587548.1591625165.1592651493.5&traceId=H5_DEV_DA47D8A0-52D2-4347-9CB6-9FEAD4EBAFF11592668544392&deviceId=H5_DEV_DA47D8A0-52D2-4347-9CB6-9FEAD4EBAFF1&signKeyV1=21acfb7cec4248f3440b24bc39fd4bcdf9e0091d467cd8ad51908c04c8697af1";
        JDUserRes result = restTemplate.getForObject(url, JDUserRes.class);

        JDUserRes.ResultBean res = result.getResult();
        if (res != null) {
            Set<String> collect = res.getChannelFloorList().get(0).getBannerFloorItemList().stream().map(e -> e.getImgUrl()).collect(Collectors.toSet());
            a.setKey(ConfigConsts.userPageImgs);
            a.setValue(JSON.toJSONString(collect));
            appConfigDao.updateByKeySelective(a);// 更新轮播图

            Set<ButtonGroupVO> collect1 = res.getClassifyModuleVOList().get(0).getUserModuleVOList().stream().map(e -> {
                ButtonGroupVO b = new ButtonGroupVO();
                b.setText(e.getName());
                b.setImg(e.getImg());
                return b;
            }).collect(Collectors.toSet());// 功能

            Set<ButtonGroupVO> collect2 = res.getClassifyModuleVOList().get(1).getUserModuleVOList().stream().map(e -> {
                ButtonGroupVO b = new ButtonGroupVO();
                b.setText(e.getName());
                b.setImg(e.getImg());
                return b;
            }).collect(Collectors.toSet());//更多推荐
            collect1.addAll(collect2);
            a.setKey(ConfigConsts.userMenus);
            a.setValue(JSON.toJSONString(collect1));
            appConfigDao.updateByKeySelective(a);// 更新用户页面的图标组

        }

        return ResponseDTO.ok("操作成功！");

    }


}
