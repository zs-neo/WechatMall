package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.Event;
import com.edu.neu.foodclient.mapper.EventMapper;
import com.edu.neu.foodclient.service.EventService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventServiceImpl implements EventService {

    @Autowired
    private EventMapper eventMapper;

    @Override
    public List<Event> getAll() {
        return eventMapper.getAll();
    }


    public PageInfo<Event> getAllByPage(int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);

        return new PageInfo<Event>(eventMapper.getAll());

    }

    @Override
    public PageInfo<Event> fuzzySearch(int pageNum, int pageSize, Event event) {
        PageHelper.startPage(pageNum, pageSize);

        return new PageInfo<Event>(eventMapper.fuzzySearch(event));
    }

    @Override
    public boolean insertEvent(Event event) {
        int count=eventMapper.insertEvent(event);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean updateEvent(Event event) {

        int count=eventMapper.updateEvent(event);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean deleteEvent(int eventid) {
        int count=eventMapper.deleteEvent(eventid);
        if(count>0) {
            return true;
        }
        return false;

    }

    @Override
    public boolean updateStatus(Event event) {
        int count=eventMapper.updateStatus(event);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean deleteBatch(int[] eventids) {
        int count=eventMapper.deleteBatch(eventids);
        if(count>0){
            return  true;
        }
        return false;
    }


}
