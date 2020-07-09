package com.edu.neu.foodclient.mapper;

import com.edu.neu.foodclient.entity.Cart;
import com.edu.neu.foodclient.entity.Food;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface CartMapper {
    @Insert("insert into cart values(#{fid},#{tid},#{fdesc},#{fname},#{fpic},#{fprice},#{fdiscount},#{fnum},#{fcost})")
    int insertCart(Cart cart);

    @Delete("truncate cart")
    int clearCart();

    @Delete("delete from cart where fid=#{fid}")
    int deleteCartItem(Cart cart);

    @Select("select count(*) from cart")
    int getCartTypeNum();

    @Select("select * from cart where fid=#{fid}")
    Cart selectCart(Cart cart);

    @Update("update cart set fnum=#{fnum} where fid=#{fid}")
    int updateCart(Cart cart);

    @Select("select * from cart")
    List<Cart> getCarts();

    @Select({"<script>",
            "select * from cart WHERE fid IN",
            "<foreach collection='idList' item='item' index='index' open='(' separator=',' close=')'>",
            "#{item}",
            "</foreach>", 
            "</script>"})
    List<Cart> getCartsByFids(int[] idList);


}
