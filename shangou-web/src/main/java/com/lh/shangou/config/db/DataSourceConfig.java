package com.lh.shangou.config.db;

import com.alibaba.druid.pool.DruidDataSource;
import com.lh.shangou.config.redis.RedisConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * creator：杜夫人
 * date: 2020/7/3
 */
//@Configuration
public class DataSourceConfig {
    Logger logger = LoggerFactory.getLogger(DataSourceConfig.class);
//    @Bean
    DataSource dataSource() throws SQLException {
        DruidDataSource druidDataSource = new DruidDataSource();
        String dbaddress = "47.112.217.144:3306/shangou_db";
        druidDataSource.setUrl("jdbc:mysql://"+dbaddress+"?serverTimezone=Asia/Shanghai");
        logger.info(dbaddress);
        logger.info(druidDataSource.getConnection().getMetaData().getURL());
        druidDataSource.setPassword("123456");
        druidDataSource.setUsername("root");
        return druidDataSource;
    }
}
