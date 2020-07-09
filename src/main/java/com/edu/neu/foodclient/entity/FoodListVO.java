/*
 * Author github: https://github.com/zs-neo
 * Author Email: 2931622851@qq.com
 */
package com.edu.neu.foodclient.entity;

import java.util.List;

/**
 * @author zhousheng
 * @version 1.0
 * @since 2020/7/7 21:15
 */
public class FoodListVO {
	
	private FirstType firstType;
	private List<Food> foods;
	
	public FirstType getFirstType() {
		return firstType;
	}
	
	public void setFirstType(FirstType firstType) {
		this.firstType = firstType;
	}
	
	public List<Food> getFoods() {
		return foods;
	}
	
	public void setFoods(List<Food> foods) {
		this.foods = foods;
	}
}
