package com.edu.neu.foodclient.mapper;


import com.edu.neu.foodclient.entity.CouponReceive;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface CouponReceiveMapper {

    List<CouponReceive> getByClientId(int clientid);
    int insert(CouponReceive couponReceive);//此时插入的优惠卷状态都为0表示已领取未使用


}