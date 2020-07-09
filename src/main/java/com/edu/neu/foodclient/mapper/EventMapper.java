package com.edu.neu.foodclient.mapper;



import com.edu.neu.foodclient.entity.Event;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EventMapper {

    List<Event> getAll();

    List<Event> fuzzySearch(Event event);  //模糊搜索根据日期或者优惠卷名称

    int insertEvent(Event event);

    int updateEvent(Event event);

    int deleteEvent(int eventid);

    int updateStatus(Event event);

    int deleteBatch(int[] eventids);

}
