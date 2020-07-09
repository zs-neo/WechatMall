package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.MemberDetail;
import com.edu.neu.foodclient.entity.RedPacket;

import java.util.List;

public interface MemberDetailService {

    List<MemberDetail> getByClientid(int clientid);//根据用户id拿到所有记录

    boolean insert(MemberDetail memberDetail);//新增一条积分明细
}
