package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.Cart;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface CartService {

    int insertCart(Cart cart);
    int clearCart();
    int deleteCartItem(Cart cart);
    Cart selectCart(Cart cart);
    int getCartTypeNum();
    int updateCart(Cart cart);
    List<Cart> getCarts();
    List<Cart> getCartsByFids(int[] idList);

}
