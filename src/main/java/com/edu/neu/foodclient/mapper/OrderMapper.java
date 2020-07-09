package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.Order;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface OrderMapper {
    @Insert("insert into forder values(seq_order_id.nextval, #{clientid}, sysdate, 0, #{cost}, #{remark}, #{serialnum}, #{couponid}, 0)")
    int insertOrder(Order order);

    @Select("select * from forder")
    List<Order> selectAll();

    @Select("select * from forder where clientid = #{clientid}")
    List<Order> selectById(Integer clientid);

    @Select("select orderid from forder where serialnum=#{serialnum}")
    Integer getOrderIdBySerialNum(String serialnum);
}
