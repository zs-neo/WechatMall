package com.edu.neu.foodclient.controller;

import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.service.ClientService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/client")
public class ClientController {

    @Resource
    private ClientService clientService;
    @RequestMapping("/update")
    public Object updateClient(@RequestBody Client client){
        Map<String, Object> map = new HashMap<>();
        int status = clientService.updateClientInfo(client);
        if(status==1){
            map.put("status", true);
        }else {
            map.put("status", false);
            map.put("msg", "网络异常，请稍后再试或联系管理员");
        }
        return map;
    }

    @RequestMapping("/getClient")
    public Object getClient(@PathParam("clientid") Integer clientid){
        Client client = clientService.getClient(clientid);
        return client;
    }

    @RequestMapping("/updatePwd")
    public Object updatePwd(@PathParam("oldPwd") String oldPwd, @PathParam("newPwd") String newPwd, HttpSession session){
        Map<String, Object> map = new HashMap<>();
        Client client = ((Client) session.getAttribute("user"));
        if(client==null){
            map.put("status",false);
            map.put("msg", "身份过期, 请重新登录");

        }else{
//            if(MD5.md5(oldPwd).equals(admin.getPassword())){
//                adminService.updatePwd(Integer.parseInt(String.valueOf(admin.getId())), MD5.md5(newPwd));
//                map.put("isSuccess",true);
//            }else{
//                map.put("isSuccess",false);
//                map.put("msg","密码错误");
//            }
            if(oldPwd.equals(client.getPassword())){
                Client paramClient = new Client();
                paramClient.setClientid(client.getClientid());
                paramClient.setPassword(newPwd);
                int status = clientService.updateClientInfo(paramClient);
                if(status==1){
                    map.put("status", true);
                }else{
                    map.put("status", false);
                    map.put("msg", "系统连接异常，请重试或联系管理员");
                }
            }else{
                map.put("status", false);
                map.put("msg", "密码错误");
            }
        }
        return map;
    }

    @Value("${upload.path}")
    private String uploadPath;
    @RequestMapping("/updateIcon")
    public Object uploadIcon(@RequestParam("mf") MultipartFile mf, HttpSession session){
        Map<String, Object> map = new HashMap<>();
        Client client = ((Client) session.getAttribute("user"));
        if(client==null){
            map.put("status",false);
            map.put("msg", "身份过期, 请重新登录");
            return map;
        }
        map.put("status", false);
        map.put("msg", "网络异常，请重试");
        String	newFilename = UUID.randomUUID().toString().replaceAll("-", "")+"_"+mf.getOriginalFilename();
        File path = new File(this.uploadPath);
        if(!path.exists()) {
            path.mkdir();
        }
        try {
            mf.transferTo(new File(this.uploadPath+"/"+newFilename));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(new File(this.uploadPath+"/"+newFilename).exists()){
            Client clientParam = new Client();
            clientParam.setClientid(client.getClientid());
            clientParam.setIcon(newFilename);
            clientService.updateClientInfo(clientParam);
            map.put("status", true);
            map.put("msg", "更新成功");
            client.setIcon(newFilename);
            session.setAttribute("user", client);
        }


        return map;
    }
}
