package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.UserAddress;
import com.edu.neu.foodclient.mapper.UserAddressMapper;
import com.edu.neu.foodclient.service.UserAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserAddressServiceImpl implements UserAddressService {
    @Resource
    private UserAddressMapper userAddressMapper;

    @Override
    public int insertAddress(UserAddress userAddress) {
        return userAddressMapper.insertAddress(userAddress);
    }

    @Override
    public List<UserAddress> getUserAddress(int userid) {
        return userAddressMapper.getUserAddress(userid);
    }

    @Override
    public int deleteUserAddress(int addressid) {
        return userAddressMapper.deleteUserAddress(addressid);
    }

    @Override
    public int updateUserAddress(UserAddress userAddress) {
        return userAddressMapper.updateUserAddress(userAddress);
    }
}
