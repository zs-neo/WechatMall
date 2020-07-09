package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.Food;
import org.apache.ibatis.annotations.*;
import java.util.List;

@Mapper
public interface FoodMapper {

    @Select("select * from foods")
    List<Food> getAll();


    @Select("select * from foods where tid=#{stid}")
    List<Food> getFoodBySecondType(int stid);

    //模糊查询
    @Select("select * from foods where instr(fname,#{fname})>0")
    List<Food> getFoodByName(String fname);

    @Select("select * from foods where fid=#{fid}")
    Food getFoodByFid(int fid);

    @Select("select * from foods where fid<100")
    List<Food> getRecommendFood();
}