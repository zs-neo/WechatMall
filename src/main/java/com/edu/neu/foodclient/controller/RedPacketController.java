package com.edu.neu.foodclient.controller;

import com.edu.neu.foodclient.entity.Food;
import com.edu.neu.foodclient.entity.RedPacket;
import com.edu.neu.foodclient.service.FoodService;
import com.edu.neu.foodclient.service.RedPacketService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/redpacket")
public class RedPacketController {


    @Autowired
    private RedPacketService redPacketService;

    /**
     * 获取全部红包数据
     *
     * @return 红包列表
     */
    @RequestMapping("/getAll")
    public List<RedPacket> getAll() {
        System.out.println(1);
        return redPacketService.getAll();
    }
}
