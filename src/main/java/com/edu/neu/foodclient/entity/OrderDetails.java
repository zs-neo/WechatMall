package com.edu.neu.foodclient.entity;

public class OrderDetails {
	private int id;
	private int orderid;
	private int foodid;
	private Food food;
	private int amount;

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	@Override
	public String toString() {
		return "OrderDetails{" +
				"id=" + id +
				", orderid=" + orderid +
				", foodid=" + foodid +
				", food=" + food +
				", amount=" + amount +
				'}';
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}


	public int getFoodid() {
		return foodid;
	}

	public void setFoodid(int foodid) {
		this.foodid = foodid;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
}