package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.Order;
import com.edu.neu.foodclient.entity.OrderDetails;
import com.edu.neu.foodclient.mapper.FoodMapper;
import com.edu.neu.foodclient.mapper.OrderDetailsMapper;
import com.edu.neu.foodclient.mapper.OrderMapper;
import com.edu.neu.foodclient.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderMapper orderMapper;
    @Resource
    private OrderDetailsMapper odm;

    @Resource
    private FoodMapper foodMapper;
    @Override
    public int addOrder(Order order) {
        int status = orderMapper.insertOrder(order);
        List<OrderDetails> orderDetails = order.getOrderDetailsList();
        Integer orderid = orderMapper.getOrderIdBySerialNum(order.getSerialnum());
        for(OrderDetails ods : orderDetails){
            ods.setOrderid(orderid);
            odm.addDetailOneByOne(ods);
        }
        return status;
    }

    @Override
    public List<Order> getAll() {
        List<Order> orders = orderMapper.selectAll();
        for(Order order : orders) {
            order.setOrderDetailsList(odm.getByOrderId(order.getOrderid()));
            for(OrderDetails od : order.getOrderDetailsList()){
                od.setFood(foodMapper.getFoodByFid(od.getFoodid()));
            }
        }
        return orders;
    }

    @Override
    public List<Order> getById(Integer clientid) {
        List<Order> orders = orderMapper.selectById(clientid);
        for(Order order : orders) {
            Integer orderid = order.getOrderid();
            List<OrderDetails> orderDetails = odm.getByOrderId(orderid);
            for(OrderDetails od : orderDetails){
                od.setFood(foodMapper.getFoodByFid(od.getFoodid()));
            }
            order.setOrderDetailsList(orderDetails);
        }
        return orders;
    }
}
