package com.lh.shangou.config.db;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * creator：杜夫人
 * date: 2020/7/3
 */
@Configuration
public class DataSourceConfig {
    @Bean
    DataSource dataSource() {
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setUrl("jdbc:mysql://120.25.223.121:3306/shangou_db_test?serverTimezone=Asia/Shanghai");
        druidDataSource.setPassword("root");
        druidDataSource.setUsername("root");
        return druidDataSource;
    }
}
