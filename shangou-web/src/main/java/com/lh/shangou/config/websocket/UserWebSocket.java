package com.lh.shangou.config.websocket;


import com.alibaba.fastjson.JSON;
import com.lh.shangou.pojo.dto.ResponseDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 作者：黎杭
 * 日期：2020/2/23
 * 需要把这个类交给spring容器管理
 * 服务器的节点(路径)
 */
@Component
@ServerEndpoint(value = "/pages/back/shanGouWebSocket/{userId}", configurator = MyEndpointConfigure.class)
public class UserWebSocket {

    // 静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。原子类(BAT面试)
    private static final AtomicInteger OnlineCount = new AtomicInteger(0);

    // concurrent包的线程安全Set，用来存放每个客户端对应的ProductWebSocket对象。
    private static ConcurrentHashMap<String, UserWebSocket> webSocketMap = new ConcurrentHashMap<>();

    // 与某个客户端的连接会话，需要通过它来给客户端发送数据(不是shiro的session,也不是HttpSession,是websocket的session)
    private Session session;

    private String userId;


    private Logger log = LoggerFactory.getLogger(UserWebSocket.class);

    /**
     * 连接建立成功调用的方法
     */
    @OnOpen
    public void onOpen(@PathParam("userId") String userId, Session session) {
        this.userId = userId;// 当前类的userId就等于你传递来的userId
        log.info("新客户端连入，用户id：" + userId);
        this.session = session;

        webSocketMap.put(userId, this);

        addOnlineCount(); // 在线数加1
        sendMessage(ResponseDTO.ok(userId + "连接成功-" + "-当前在线人数为：" + getOnlineCount()));
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose() {
        log.info(this.userId + "关闭连接");
        webSocketMap.remove(this.userId); // 从set中删除
        subOnlineCount(); // 在线数减1

    }

    /**
     * 收到客户端消息后触发的方法
     *
     * @param message 客户端发送过来的消息
     */
    @OnMessage
    public void onMessage(String message, Session session) {
        log.info(session.getId() + "用户发送过来的消息为：" + message);
    }

    /**
     * 发生错误时调用
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.error("websocket出现错误" + this.userId);
    }

    // 发送消息(服务器主动给客户端发送消息啊)
    public void sendMessage(Object message) {
        try {
            this.session.getBasicRemote().sendText(JSON.toJSONString(message));
            log.info("推送消息成功，消息为：" + message);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static UserWebSocket getUserWebSocket(String userId) {
        return webSocketMap.get(userId);
    }

    /**
     * 群发自定义消息
     */
    public static void sendInfo(String message) throws IOException {

    }

    public static synchronized int getOnlineCount() {
        return OnlineCount.get();
    }

    public static synchronized void addOnlineCount() {
        OnlineCount.incrementAndGet(); // 在线数加1
    }

    public static synchronized void subOnlineCount() {
        OnlineCount.decrementAndGet(); // 在线数加1
    }

}
