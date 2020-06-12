package com.lh.shangou.config.websocket;


import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
 * 作者：dfl
 */
@SpringBootConfiguration
public class WebSocketConfig {

    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        return new ServerEndpointExporter();
    }
    @Bean
    public MyEndpointConfigure newConfigure() {
        return new MyEndpointConfigure();
    }

}
