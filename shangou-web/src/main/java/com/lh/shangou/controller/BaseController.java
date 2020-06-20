package com.lh.shangou.controller;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.config.webmvc.WebMvcConfig;
import com.lh.shangou.pojo.entity.AppConfig;
import com.lh.shangou.pojo.vo.AppConfigVO;
import com.lh.shangou.service.AppConfigService;
import com.lh.shangou.service.MerchantService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.core.env.Environment;
import org.springframework.util.CollectionUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * creator：杜夫人
 * date: 2020/5/20
 */
public class BaseController {
    @Resource
    AppConfigService appConfigService;

    @Resource
    MerchantService merchantService;

    @Resource
    Environment environment;// 这个就spring的智能机制，如果你在这里要引用一个另一个容器中的实例，那么， 它就先先把你需要的这个实例先创建出来。

    @Resource
    ServletContext servletContext;// 给整个程序设置属性

    protected String saveFile(MultipartFile f, String uploadPath) {// 很多控制器里边都可能会有保存文件的操作
        if (f != null && !f.isEmpty()) {
            if (f.getSize() > 0) {
                String uid = UUID.randomUUID().toString();// 文件名称不会重复
                String originalFilename = f.getOriginalFilename();// 获取原始文件的名称
                String s = originalFilename.substring(originalFilename.lastIndexOf("."));// 获取文件后缀名称
                String fileName = uid + s;// 文件的名称（包含文件后缀）
                String realPath = getRequest().getServletContext().getRealPath("/");// 这个才是项目发布的磁盘目录

                String s1 = WebMvcConfig.getUploadPath();// 磁盘任意路径

                File file = new File(s1 + uploadPath + fileName);// 需要指定上文的保存目录路径
                if (!file.getParentFile().exists()) {// 如果父目录不存在
                    file.getParentFile().mkdirs();// 就多级创建父目录
                }
                try {
                    f.transferTo(file);
                    return uploadPath + fileName;
                } catch (IOException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return null;
    }

    public HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    }

    protected Session getSession() {// 获取shiro自己的session
        return SecurityUtils.getSubject().getSession();
    }

    protected Long getUserId() {// 获取当前用户id
        return (Long) getSession().getAttribute("userId");
    }

    protected String getPhone() {// 获取当前用户手机
        return (String) getSession().getAttribute("phone");
    }

    protected Long getMerchantId() {// 获取当前用户的商户id
        Long merchantId = (Long) getSession().getAttribute("merchantId");

        if (merchantId == null) {
            merchantId = merchantService.selectMerchantIdByUserId(getUserId());
            if (merchantId != null) {
                getSession().setAttribute("merchantId", merchantId);// 保存到session里边去
            }
        }
        return merchantId;
    }

    @PostConstruct
    public void setInfo() {
        String property = environment.getProperty("server.port");
        servletContext.setAttribute("serverPort", property);
    }

    /**
     * 索取所有系统的配置
     *
     * @return 返回key的map集合
     */
    protected Map<String, List<AppConfigVO>> getConfig() {
        List<AppConfigVO> allConfig = appConfigService.getAllConfig();
        return allConfig.stream().collect(Collectors.groupingBy(AppConfig::getKey));
    }


    /**
     * 按照key查找值，得到泛型类
     *
     * @return 返回key的map集合
     */
    protected <T> T getSingleValueByKey(String key, Class<T> tClass) {
        List<AppConfigVO> allConfig = appConfigService.getAllConfig();
        Map<String, List<AppConfigVO>> collect = allConfig.stream().collect(Collectors.groupingBy(AppConfig::getKey));
        List<AppConfigVO> appConfigVOS = collect.get(key);
        if (!CollectionUtils.isEmpty(appConfigVOS)) {
            AppConfigVO appConfigVO = appConfigVOS.get(0);
            String value = appConfigVO.getValue();
            if (appConfigVO.getIsJson()) {
                return JSON.parseObject(value, tClass);
            }
        }
        return null;
    }

    /**
     * 按照key查找值，得到字符串
     *
     * @return 返回key的map集合
     */
    protected String getSingleValueByKey(String key) {
        List<AppConfigVO> allConfig = appConfigService.getAllConfig();
        Map<String, List<AppConfigVO>> collect = allConfig.stream().collect(Collectors.groupingBy(AppConfig::getKey));
        List<AppConfigVO> appConfigVOS = collect.get(key);
        if (!CollectionUtils.isEmpty(appConfigVOS)) {
            AppConfigVO appConfigVO = appConfigVOS.get(0);
            return appConfigVO.getValue();

        }
        return null;
    }

    /**
     * 按照key查找值,获取集合
     *
     * @return 返回key的map集合
     */
    protected <T> List<T> getListByKey(String key, Class<T> tClass) {
        List<AppConfigVO> allConfig = appConfigService.getAllConfig();
        Map<String, List<AppConfigVO>> collect = allConfig.stream().collect(Collectors.groupingBy(AppConfig::getKey));
        List<AppConfigVO> appConfigVOS = collect.get(key);
        if (!CollectionUtils.isEmpty(appConfigVOS)) {
            AppConfigVO appConfigVO = appConfigVOS.get(0);
            String value = appConfigVO.getValue();
            if (appConfigVO.getIsJson()) {
                return JSON.parseArray(value, tClass);
            }
        }
        return null;
    }
}
