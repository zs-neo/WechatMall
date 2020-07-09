package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.Order;

import java.util.List;

public interface OrderService {
    int addOrder(Order order);
    List<Order> getAll();
    List<Order> getById(Integer clientid);
}
