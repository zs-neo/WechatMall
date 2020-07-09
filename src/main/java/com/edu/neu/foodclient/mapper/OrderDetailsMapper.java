package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.OrderDetails;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface OrderDetailsMapper {
    @Insert("insert into forderdetail values(seq_orderdetails_id.nextval, #{orderid},#{foodid}, #{amount})")
    int addDetailOneByOne(OrderDetails orderDetails);
    @Select("select * from forderdetail")
    List<OrderDetails> getAll();
    @Select("select * from forderdetail where orderid=#{orderid}")
    List<OrderDetails> getByOrderId(Integer orderid);
}
