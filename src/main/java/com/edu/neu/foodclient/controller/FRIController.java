package com.edu.neu.foodclient.controller;


import com.edu.neu.foodclient.entity.FullReductInfo;
import com.edu.neu.foodclient.service.FRIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/fullreduct")
public class FRIController {

    @Autowired
    private FRIService friService;

    @RequestMapping("/getAll")
    public FullReductInfo getAll(){
        return friService.getAll();
    }

    @RequestMapping("/updateFRI")
    public Object updateFRI(@RequestBody  FullReductInfo fullReductInfo){
        Map<String,Object> map = new HashMap<String, Object>();
        System.out.println(fullReductInfo.toString());
        if(friService.updateFRI(fullReductInfo))
            map.put("updatemsg",true);
        else {
            map.put("updatemsg",false);
        }
        return map;
    }




}
