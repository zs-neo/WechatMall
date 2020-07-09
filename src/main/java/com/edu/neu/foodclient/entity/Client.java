/*
 * Author github: https://github.com/zs-neo
 * Author Email: 2931622851@qq.com
 */
package com.edu.neu.foodclient.entity;

import java.util.Date;

/**
 * @author zhousheng
 * @version 1.0
 * @since 2020/6/27 10:50
 */
public class Client {
	
	private Integer clientid;
	private String username;
	private String password;
	private String wechat_id;
	private String icon;
	private String phone;
	private String createdate;
	private Member member;
	private Integer type;
	private Integer state;
	private Double scores;

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "Client{" +
				"clientid=" + clientid +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", wechat_id='" + wechat_id + '\'' +
				", icon='" + icon + '\'' +
				", phone='" + phone + '\'' +
				", createdate='" + createdate + '\'' +
				", member=" + member +
				", type=" + type +
				", state=" + state +
				", scores=" + scores +
				'}';
	}

	public Integer getClientid() {
		return clientid;
	}

	public void setClientid(Integer clientid) {
		this.clientid = clientid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWechat_id() {
		return wechat_id;
	}

	public void setWechat_id(String wechat_id) {
		this.wechat_id = wechat_id;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCreatedate() {
		return createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Double getScores() {
		return scores;
	}

	public void setScores(Double scores) {
		this.scores = scores;
	}
}
