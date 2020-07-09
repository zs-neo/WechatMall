package com.edu.neu.foodclient.websocket;

import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/wss")
@Component
public class WSServer {
    //这个方法会在建立连接的时候自动调用
    @OnOpen
    public void open(Session session) {
        System.out.println("open");
    }

    //关闭连接的时候被调用
    @OnClose
    public void close(Session session) {
        System.out.println("close");
    }


    //发送信息的时候,自动调用
    @OnMessage
    public void message(String msg,Session session) {
        System.out.println("message");
    }

    //发生错误的时候,自动调用
    @OnError
    public void error(Session session, Throwable error) {
        System.out.println("error");
    }

}
