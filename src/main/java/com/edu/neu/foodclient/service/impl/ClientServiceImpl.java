package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.mapper.ClientMapper;
import com.edu.neu.foodclient.mapper.MemberMapper;
import com.edu.neu.foodclient.service.ClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ClientServiceImpl implements ClientService {
    @Resource
    ClientMapper clientMapper;
    @Resource
    MemberMapper memberMapper;
    @Override
    public int updateClientInfo(Client client) {
        return clientMapper.updateClientInfo(client);
    }

    @Override
    public Client getClient(Integer clientid) {
        Client client = clientMapper.getClient(clientid);
        if(client!=null){
            client.setMember(memberMapper.getMember(client.getClientid()));
            String dateTime = client.getCreatedate().toString().replace("Z", " UTC");
            client.setCreatedate(dateTime);
            return client;
        }
        return null;
    }
}
