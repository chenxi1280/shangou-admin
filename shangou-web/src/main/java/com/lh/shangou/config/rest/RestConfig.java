package com.lh.shangou.config.rest;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */
@SpringBootConfiguration
public class RestConfig {
    @Bean
    public RestTemplate restTemplate() {// springboot就新一代的http请求，用RestTemplate是最简单的，同样的还有okHttp,HttpClient
        return new RestTemplate();
    }
}
