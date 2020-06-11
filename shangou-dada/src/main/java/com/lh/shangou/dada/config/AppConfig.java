package com.lh.shangou.dada.config;

import org.springframework.stereotype.Component;

/**
 * DATE: 18/9/3
 *
 * @author: wan
 */
@Component
public class AppConfig {

    private String appKey;

    private String appSecret;

    private String host;

    private String sourceId;

    public AppConfig() {
        this.appKey = AppConstant.APP_KEY;
        this.appSecret = AppConstant.APP_SECRET;
        this.host = AppConstant.ONLINE_HOST;
        this.sourceId = AppConstant.SOURCE_ID;
    }

    public String getAppKey() {
        return appKey;
    }
    public String getAppSecret() {
        return appSecret;
    }
    public String getHost() {
        return host;
    }
    public String getSourceId() {
        return sourceId;
    }
}
