package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.Food;
import com.edu.neu.foodclient.entity.RedPacket;
import com.edu.neu.foodclient.mapper.FoodMapper;
import com.edu.neu.foodclient.mapper.RedPacketMapper;
import com.edu.neu.foodclient.service.FoodService;
import com.edu.neu.foodclient.service.RedPacketService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RedPacketServiceImpl implements RedPacketService {

    @Autowired
    private RedPacketMapper redPacketMapper;


    @Override
    public List<RedPacket> getAll() {
        return redPacketMapper.getAll();
    }
}
