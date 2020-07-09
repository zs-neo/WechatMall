package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.UserAddress;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserAddressMapper {

    @Insert("insert into useraddress values(of_useraddress_userid_seq.nextval,1,#{username},#{phone},#{province},#{city},#{district},#{address},#{postal})")
    int insertAddress(UserAddress userAddress);

    @Select("select * from useraddress where userid = #{userid}")
    List<UserAddress> getUserAddress(int userid);

    @Delete("delete from useraddress where addressid=#{addressid}")
    int deleteUserAddress(int addressid);

    @Update("update useraddress set username=#{username},phone=#{phone},province=#{province},city=#{city},district=#{district},address=#{address},postal=#{postal} where addressid = #{addressid}")
    int updateUserAddress(UserAddress userAddress);
}
