package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.Food;
import com.edu.neu.foodclient.entity.RedPacket;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface RedPacketService {

    List<RedPacket> getAll();

}
