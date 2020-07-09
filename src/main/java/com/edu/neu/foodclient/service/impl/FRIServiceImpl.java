package com.edu.neu.foodclient.service.impl;


import com.edu.neu.foodclient.entity.FullReductInfo;
import com.edu.neu.foodclient.mapper.FRIMapper;
import com.edu.neu.foodclient.service.FRIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FRIServiceImpl implements FRIService {
    @Autowired
    private FRIMapper friMapper;
    @Override
    public FullReductInfo getAll() {
        return friMapper.getAll();
    }

    @Override
    public boolean updateFRI(FullReductInfo fullReductInfo) {
        int count=friMapper.updateFRI(fullReductInfo);
        if(count>0){
            return  true;
        }
        return false;
    }
}
