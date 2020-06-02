package com.lh.shangou.util.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * creator：杜夫人
 * date: 2020/5/19
 */
@Component
public class SpringUtil implements ApplicationContextAware {

    Logger logger = LoggerFactory.getLogger(SpringUtil.class);

    public static ApplicationContext applicationContext;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        SpringUtil.applicationContext = applicationContext;
        logger.warn("spring自定义工具类已经完成");
    }

    public static <T> T getBean(String var1, Class<T> var2) {
        return SpringUtil.applicationContext.getBean(var1, var2);
    }

    public static Object getBean(String var1) {
        return SpringUtil.applicationContext.getBean(var1);
    }

    public static <T> T getBean(Class<T> var2) {
        return SpringUtil.applicationContext.getBean(var2);
    }
}
