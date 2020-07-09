package com.edu.neu.foodclient.service.impl;


import com.edu.neu.foodclient.entity.CouponReceive;
import com.edu.neu.foodclient.entity.RedPacketReceive;
import com.edu.neu.foodclient.mapper.CouponReceiveMapper;
import com.edu.neu.foodclient.mapper.RedPacketReceiveMapper;
import com.edu.neu.foodclient.service.CouponReceiveService;
import com.edu.neu.foodclient.service.RedPacketReceiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RedPacketReceiveServiceImpl implements RedPacketReceiveService {
    @Autowired
    private RedPacketReceiveMapper redPacketReceiveMapper;

    @Override
    public List<RedPacketReceive> getByClientId(int clientid) {
        return redPacketReceiveMapper.getByClientId(clientid);
    }

    @Override
    public boolean insert(RedPacketReceive redPacketReceive) {
        int count=redPacketReceiveMapper.insert(redPacketReceive);
        if(count>0){
            return  true;
        }
        return false;
    }
}
