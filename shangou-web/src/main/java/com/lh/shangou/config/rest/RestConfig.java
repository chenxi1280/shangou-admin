package com.lh.shangou.config.rest;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */
@SpringBootConfiguration
public class RestConfig {
    @Bean
    public RestTemplate restTemplate() {// springboot就新一代的http请求，用RestTemplate是最简单的，同样的还有okHttp,HttpClient
        RestTemplate restTemplate = new RestTemplate();
        DefaultUriBuilderFactory uriFactory = new DefaultUriBuilderFactory();
        uriFactory.setEncodingMode(DefaultUriBuilderFactory.EncodingMode.VALUES_ONLY);// 对地址不进行编码，在请求之前自己做好编码
        restTemplate.setUriTemplateHandler(uriFactory);
        return  restTemplate;
    }
}
