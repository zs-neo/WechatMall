package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.UserAddress;

import java.util.List;

public interface UserAddressService {
    int insertAddress(UserAddress userAddress);
    List<UserAddress> getUserAddress(int userid);
    int deleteUserAddress(int addressid);
    int updateUserAddress(UserAddress userAddress);
}
