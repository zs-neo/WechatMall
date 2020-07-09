package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.Client;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
* @Author chaichengwei
* @Date 2020-7-3 14:46
* @Gmail chanchenwee@gmail.com
* */

@Mapper
public interface ClientMapper {
    /**
     * name 模糊更新
    * */
    int updateClientInfo(Client client);

    /**
     * name getClient
     * */
    @Select("select * from client where clientid = #{clientid}")
    Client getClient(Integer clientid);
}
