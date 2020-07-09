package com.edu.neu.foodclient.mapper;


import com.edu.neu.foodclient.entity.CouponReceive;
import com.edu.neu.foodclient.entity.RedPacketReceive;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface RedPacketReceiveMapper {

    List<RedPacketReceive> getByClientId(int clientid);
    int insert(RedPacketReceive redPacketReceive);//此时插入的红包状态都为0表示已领取未使用


}