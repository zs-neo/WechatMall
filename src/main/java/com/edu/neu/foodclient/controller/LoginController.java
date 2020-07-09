/*
 * Author github: https://github.com/zs-neo
 * Author Email: 2931622851@qq.com
 */
package com.edu.neu.foodclient.controller;


import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.entity.UserVO;
import com.edu.neu.foodclient.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author zhousheng
 * @version 1.0
 * @since 2020/6/28 13:48
 */
@RestController
@RequestMapping("/user")
public class LoginController {
	
	@Resource
	private LoginService loginService;
	
	@RequestMapping("/login")
	public Client login(String username, String password, HttpSession session) {
		System.out.println(username+password);
		Client client = loginService.login(username, password);
		session.setAttribute("user", client);
		System.out.println(session.getAttribute("user"));
		return client;
	}

	@RequestMapping("/register")
	public int register(@RequestBody Client client) {
		return loginService.register(client);
	}
	
	@RequestMapping("/password")
	public int replace(@RequestBody UserVO user) {
		try {
			loginService.replace(user);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	
}
