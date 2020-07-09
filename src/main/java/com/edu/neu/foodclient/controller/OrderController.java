package com.edu.neu.foodclient.controller;

import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.entity.IdVO;
import com.edu.neu.foodclient.entity.Order;
import com.edu.neu.foodclient.entity.OrderVO;
import com.edu.neu.foodclient.service.OrderService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/order")
public class OrderController {
	
	@Resource
	OrderService orderService;
	
	@RequestMapping("/getAll")
	public Object getAll() {
		return orderService.getAll();
	}
	
	@RequestMapping("/getById")
	public Object getById(HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		map.put("status", false);
		map.put("msg", "会话超时，请重新登录");
		Client client = (Client) session.getAttribute("user");
		
		if (client != null) {
			map.clear();
			map.put("status", true);
			map.put("list", orderService.getById(client.getClientid()));
		}
		return map;
	}
	
	@RequestMapping("/addOrder")
	public Object addOrder(@RequestBody Order order, HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		map.put("status", false);
		map.put("msg", "会话超时，请重新登录");
		Client client = (Client) session.getAttribute("user");
		
		if (client != null) {
			map.clear();
			
			order.setSerialnum(String.valueOf(System.currentTimeMillis()) + String.valueOf((int) (Math.random() * 999)));
			order.setClientid(client.getClientid());
			order.setCouponid(0);
			orderService.addOrder(order);
			map.put("status", true);
		}
		return map;
	}
	
	@RequestMapping("/addWechatOrder")
	public Object addWechatOrder(@RequestBody OrderVO order, HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		map.put("status", false);
		
		System.out.println(order.toString());
		
		order.getOrder().setSerialnum(String.valueOf(System.currentTimeMillis()) + String.valueOf((int) (Math.random() * 999)));
		order.getOrder().setClientid(order.getId());
		order.getOrder().setCouponid(0);
		orderService.addOrder(order.getOrder());
		map.put("status", true);
		return map;
	}
	
	@RequestMapping("/wechatGetById")
	public List<Order> wechatGetById(@RequestBody IdVO clientid) {
		System.out.println(clientid);
		return orderService.getById(clientid.getClientid());
//		return orderService.getById(clientid);
	}
}


