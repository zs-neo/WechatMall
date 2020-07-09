package com.edu.neu.foodclient.controller;


import com.edu.neu.foodclient.entity.MemberDetail;
import com.edu.neu.foodclient.entity.RedPacketReceive;
import com.edu.neu.foodclient.service.MemberDetailService;
import com.edu.neu.foodclient.service.RedPacketReceiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/memberdetail")
public class MemberDetailController {

    @Autowired
    private MemberDetailService memberDetailService;

    /**
     * 查询当前用户所有积分使用记录
     * @param clientid
     * @return
     */
    @RequestMapping("/getByClientid")
    public Object getByClientId(@RequestParam("clientid") int clientid){
        Map<String,Object> map = new HashMap<String, Object>();
        List<MemberDetail> memberDetails=memberDetailService.getByClientid(clientid);
        if(memberDetails.size()>0) {
            map.put("memberDetails", memberDetails);
            map.put("getmsg", true);
        }
        else{
            map.put("getmsg",false);
        }
        return map;

    }
    @RequestMapping("/insert")
    public Object insertRedPacketReceive(@RequestBody  MemberDetail memberDetail) {
        Map<String,Object> map = new HashMap<String, Object>();
        if(memberDetailService.insert(memberDetail))
            map.put("insertmsg",true);
        else
            map.put("insertmsg",false);
        return map;
    }




}
