package com.edu.neu.foodclient.mapper;



import com.edu.neu.foodclient.entity.FullReductInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FRIMapper {

    FullReductInfo getAll();

    int updateFRI(FullReductInfo fullReductInfo);





}
