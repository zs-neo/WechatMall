package com.edu.neu.foodclient.mapper;


import com.edu.neu.foodclient.entity.*;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MemberMapper {

	@Insert("insert into member values( #{clientid}, #{identityid}, #{realname}, sysdate, #{accumulatescores})")
    int memberRegis(Member member);

    Member getMember(int clientid);

    int updateAscores(Member member);//修该会员累计积分

    int updateScores(Client client);//修改会员积分信息

    double getScores(int clientid);//拿到积分信息





}