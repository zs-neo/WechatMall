/*
 * Author github: https://github.com/zs-neo
 * Author Email: 2931622851@qq.com
 */
package com.edu.neu.foodclient.wechat;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.service.LoginService;
import org.apache.tomcat.util.buf.CharsetUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author zhousheng
 * @version 1.0
 * @since 2020/7/7 23:13
 */
@RestController
@RequestMapping("/wechat")
public class WechatController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/login")
	public Client login(String code) {
		String data = HttpUtils.getOpenid(code);
		JSONObject jsonData = JSON.parseObject(data);
		String openTd = jsonData.getString("openid");
		Client client;
		if ((client = loginService.login(openTd, openTd)) != null) {
			return client;
		}
		client = new Client();
		client.setUsername(openTd);
		client.setPassword(openTd);
		client.setWechat_id(openTd);
		client.setPhone("0");
		client.setScores(0.0);
		client.setState(1);
		client.setType(0);
		loginService.register(client);
		return client;
	}
	
}
