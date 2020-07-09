package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.entity.Member;
import com.edu.neu.foodclient.entity.MemberDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberDetailMapper {


    List<MemberDetail> getByClientid(int clientid);//根据用户id拿到所有记录

    int insert(MemberDetail memberDetail);//新增一条积分明细






}