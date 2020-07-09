package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.FirstType;
import com.edu.neu.foodclient.entity.SecondType;
import com.edu.neu.foodclient.mapper.FoodTypeMapper;
import com.edu.neu.foodclient.service.FoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FoodTypeServiceImpl implements FoodTypeService {
    @Autowired
    private FoodTypeMapper foodTypeMapper;

    @Override
    public List<FirstType> getFirstTypeWithSecondType() {
        return foodTypeMapper.getFirstTypeWithSecondType();
    }

    @Override
    public List<FirstType> getFirstType() {
        return foodTypeMapper.getFirstType();
    }

    @Override
    public List<SecondType> getSecondTypeByFtid(int ftid) {
        return foodTypeMapper.getSecondTypeByFtid(ftid);
    }

    @Override
    public SecondType getSecondTypeByStid(int stid) {
        return foodTypeMapper.getSecondTypeByStid(stid);
    }
}
