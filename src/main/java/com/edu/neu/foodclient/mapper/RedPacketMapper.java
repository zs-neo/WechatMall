package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.Food;
import com.edu.neu.foodclient.entity.RedPacket;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RedPacketMapper {

    @Select("select * from redpacket")
    List<RedPacket> getAll();


}