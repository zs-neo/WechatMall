package com.edu.neu.foodclient.service;


import com.edu.neu.foodclient.entity.CouponReceive;
import com.edu.neu.foodclient.entity.FullReductInfo;

import java.util.List;

public interface CouponReceiveService {
    List<CouponReceive> getByClientId(int clientid);
    boolean insert(CouponReceive couponReceive);//此时插入的优惠卷状态都为0表示已领取未使用
}
