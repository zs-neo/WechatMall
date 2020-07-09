package com.edu.neu.foodclient.service;


import com.edu.neu.foodclient.entity.FullReductInfo;

public interface FRIService {
    FullReductInfo getAll();

    boolean updateFRI(FullReductInfo fullReductInfo);
}
