package com.edu.neu.foodclient.service.impl;


import com.edu.neu.foodclient.entity.CouponReceive;
import com.edu.neu.foodclient.entity.FullReductInfo;
import com.edu.neu.foodclient.mapper.CouponReceiveMapper;
import com.edu.neu.foodclient.mapper.FRIMapper;
import com.edu.neu.foodclient.service.CouponReceiveService;
import com.edu.neu.foodclient.service.FRIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CouponReceiveServiceImpl implements CouponReceiveService {
    @Autowired
    private CouponReceiveMapper couponReceiveMapper;

    @Override
    public List<CouponReceive> getByClientId(int clientid) {
        return couponReceiveMapper.getByClientId(clientid);
    }

    @Override
    public boolean insert(CouponReceive couponReceive) {
        int count=couponReceiveMapper.insert(couponReceive);
        if(count>0){
            return  true;
        }
        return false;
    }
}
