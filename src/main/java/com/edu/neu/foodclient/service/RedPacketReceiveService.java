package com.edu.neu.foodclient.service;


import com.edu.neu.foodclient.entity.CouponReceive;
import com.edu.neu.foodclient.entity.RedPacketReceive;

import java.util.List;

public interface RedPacketReceiveService {
    List<RedPacketReceive> getByClientId(int clientid);
    boolean insert(RedPacketReceive redPacketReceive);//此时插入的状态都为0表示已领取未使用
}
