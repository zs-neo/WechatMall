package com.edu.neu.foodclient.controller;



import com.edu.neu.foodclient.entity.Event;
import com.edu.neu.foodclient.service.EventService;
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
@RequestMapping("/event")
public class EventController {

    @Autowired
    private EventService eventService;

    @RequestMapping("/getAll")
    public List<Event> getAll(){
        return eventService.getAll();
    }
    @RequestMapping("/getAllByPage")
    public Object getAllByPage(@RequestParam("pageNum") int pageNum,
                               @RequestParam("pageSize") int pageSize) {
        return eventService.getAllByPage(pageNum, pageSize);
    }

    @RequestMapping("/deleteEvent")
    public Object deleteevent(@RequestParam("eventid") int eventid){
        Map<String,Object> map = new HashMap<String, Object>();
        if(eventService.deleteEvent(eventid))
            map.put("deletemsg",true);
        else {
            map.put("deletemsg",false);
        }
        return map;
    }

    @RequestMapping("/deleteBatch")
    public Object deleteBatch(@RequestBody  int[] eventids){
        Map<String,Object> map = new HashMap<String, Object>();
        if(eventService.deleteBatch(eventids))
            map.put("deleteBatchmsg",true);
        else
            map.put("deleteBatchmsg",false);
        return map;
    }

    @RequestMapping("/updateStatus")
    public Object updateStatus(@RequestParam("eventid") int eventid, @RequestParam("estatus") int estatus){
        Map<String,Object> map = new HashMap<String, Object>();
        Event event=new Event ();
        event.setEventid(eventid);
        if(estatus==1){
            event.setEstatus(0);
        }
        else{
            event.setEstatus(1);
        }

        if(eventService.updateStatus(event)) {
            map.put("updateStatus", true);
            map.put("status", event.getEstatus());
        } else {
            map.put("updateStatus",false);
        }
        return map;
    }

    @RequestMapping("/fuzzySearch")
    public Object fuzzySearch(@RequestParam("ename") String ename,
                                    @RequestParam("eventbegtime") String eventbegtime
            ,@RequestParam("eventendtime") String eventendtime,@RequestParam("pageNum") int pageNum,
                                    @RequestParam("pageSize") int pageSize){
        Event event=new Event ();
        event.setEventbegtime(eventbegtime);
        event.setEventendtime(eventendtime);
        event.setEname(ename);
        return eventService.fuzzySearch(pageNum,pageSize,event);
    }
    @RequestMapping("/insertEvent")
    public Object insertEvent(@RequestBody  Event event){
        Map<String,Object> map = new HashMap<String, Object>();
        if(eventService.insertEvent(event))
            map.put("insertmsg",true);
        else {
            map.put("insertmsg",false);
        }
        return map;
    }
    @RequestMapping("/updateEvent")
    public Object updateEvent(@RequestBody  Event event){
        Map<String,Object> map = new HashMap<String, Object>();
        if(eventService.updateEvent(event))
            map.put("updatemsg",true);
        else {
            map.put("updatemsg",false);
        }
        return map;
    }
    @RequestMapping("/uploadPic")
    public Object upload(@RequestParam("files")MultipartFile[] files,HttpServletRequest request) {
        for(int i=0;i<files.length;i++) {
            String saveFileName = files[i].getOriginalFilename();

            String filePath = "D://static//"+saveFileName;

            System.out.println(filePath);

            File f = new File(filePath);

            System.out.println(f.exists());

            try {
                files[i].transferTo(f);
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println(f.exists());
        }



        return null;
    }




}
