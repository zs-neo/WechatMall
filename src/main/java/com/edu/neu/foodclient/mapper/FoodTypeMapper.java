package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.FirstType;
import com.edu.neu.foodclient.entity.SecondType;
import org.apache.ibatis.annotations.*;
import java.util.List;

@Mapper
public interface FoodTypeMapper {

    @Select("select * from second_type where ftid=#{ftid}")
    List<SecondType> getSecondTypeByFtid(int ftid);

    @Select("select * from first_type")
    List<FirstType> getFirstType();

    @Select("select * from first_type")
    @Results({
            @Result(id=true,column = "ftid",property = "ftid"),
            @Result(column = "ftid",property = "secondTypeList", javaType = List.class,
                    many = @Many(select = "com.edu.neu.foodclient.mapper.FoodTypeMapper.getSecondTypeByFtid"))

    })
    List<FirstType> getFirstTypeWithSecondType();

    @Select("select * from second_type where stid=#{stid}")
    SecondType getSecondTypeByStid(int stid);
}
