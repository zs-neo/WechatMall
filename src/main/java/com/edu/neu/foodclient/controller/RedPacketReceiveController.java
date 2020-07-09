package com.edu.neu.foodclient.controller;


import com.edu.neu.foodclient.entity.RedPacketReceive;
import com.edu.neu.foodclient.service.RedPacketReceiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/redpacketreceive")
public class RedPacketReceiveController {

    @Autowired
    private RedPacketReceiveService redPacketReceiveService;

    /**
     * 查询近两周内的所有红包记录
     * @param clientid
     * @return
     */
    @RequestMapping("/getByClientId")
    public Object getByClientId(@RequestParam("clientid") int clientid){
        Map<String,Object> map = new HashMap<String, Object>();
        List<RedPacketReceive> redPacketReceives=redPacketReceiveService.getByClientId(clientid);
        if(redPacketReceives.size()>0) {
            int [] rpids =new int[redPacketReceives.size()];
            for(int i=0;i<redPacketReceives.size();i++){
                rpids[i]=redPacketReceives.get(i).getRpid();
            }
            map.put("rpids", rpids);
            map.put("getmsg", true);
        }
        else{
            map.put("getmsg",false);
        }
        return map;

    }
    @RequestMapping("/insert")
    public Object insertRedPacketReceive(@RequestBody  RedPacketReceive redPacketReceive) {
        Map<String,Object> map = new HashMap<String, Object>();
        if(redPacketReceiveService.insert(redPacketReceive))
            map.put("insertmsg",true);
        else
            map.put("insertmsg",false);
        return map;
    }




}
