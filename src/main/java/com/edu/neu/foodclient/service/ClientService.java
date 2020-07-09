package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.Client;

public interface ClientService {
    int updateClientInfo(Client client);
    Client getClient(Integer clientid);
}
