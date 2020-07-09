package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.entity.Member;
import com.edu.neu.foodclient.entity.RedPacket;

import java.util.List;

public interface MemberService {

   Member getMember(int clientid);
   int memberRegis(Member member);
   boolean updateAscores(Member member);

   boolean  updateScores(Client client);
}
