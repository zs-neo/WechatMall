/*
 * Author github: https://github.com/zs-neo
 * Author Email: 2931622851@qq.com
 */
package com.edu.neu.foodclient.entity;

/**
 * @author zhousheng
 * @version 1.0
 * @since 2020/7/8 10:58
 */
public class OrderVO {
	
	private Order order;
	private int id;
	
	public Order getOrder() {
		return order;
	}
	
	public void setOrder(Order order) {
		this.order = order;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "OrderVO{" +
				"order=" + order +
				", id=" + id +
				'}';
	}
}
