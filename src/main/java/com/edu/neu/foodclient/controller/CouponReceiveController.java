package com.edu.neu.foodclient.controller;


import com.edu.neu.foodclient.entity.Coupon;
import com.edu.neu.foodclient.entity.CouponReceive;
import com.edu.neu.foodclient.entity.FullReductInfo;
import com.edu.neu.foodclient.service.CouponReceiveService;
import com.edu.neu.foodclient.service.FRIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/couponreceive")
public class CouponReceiveController {

    @Autowired
    private CouponReceiveService couponReceiveService;

    @RequestMapping("/getByClientId")
    public Object getByClientId(@RequestParam("clientid") int clientid){
        Map<String,Object> map = new HashMap<String, Object>();
        List<CouponReceive> couponReceives=couponReceiveService.getByClientId(clientid);
        if(couponReceives.size()>0) {
            map.put("CouponReceives", couponReceives);
            map.put("getmsg", true);
        }
        else{
            map.put("getmsg",false);
        }
        return map;

    }
    @RequestMapping("/insertCouponReceive")
    public Object insertCouponReceive(@RequestBody  CouponReceive couponReceive) {
        Map<String,Object> map = new HashMap<String, Object>();
        if(couponReceiveService.insert(couponReceive))
            map.put("insertmsg",true);
        else
            map.put("insertmsg",false);
        return map;
    }




}
