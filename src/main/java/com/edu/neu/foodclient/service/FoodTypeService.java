package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.FirstType;
import com.edu.neu.foodclient.entity.SecondType;

import java.util.List;

public interface FoodTypeService {
    List<FirstType> getFirstTypeWithSecondType();
    List<FirstType> getFirstType();
    List<SecondType> getSecondTypeByFtid(int ftid);
    SecondType getSecondTypeByStid(int stid);
}
