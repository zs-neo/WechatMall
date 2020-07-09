package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.MemberDetail;
import com.edu.neu.foodclient.entity.RedPacket;
import com.edu.neu.foodclient.mapper.MemberDetailMapper;
import com.edu.neu.foodclient.mapper.RedPacketMapper;
import com.edu.neu.foodclient.service.MemberDetailService;
import com.edu.neu.foodclient.service.MemberService;
import com.edu.neu.foodclient.service.RedPacketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberDetailServiceImpl implements MemberDetailService {

    @Autowired
    private MemberDetailMapper memberDetailMapper;


    @Override
    public List<MemberDetail> getByClientid(int clientid) {
        return memberDetailMapper.getByClientid(clientid);
    }

    @Override
    public boolean insert(MemberDetail memberDetail) {
        int count=memberDetailMapper.insert(memberDetail);
        if(count>0){
            return  true;
        }
        return false;

    }
}
