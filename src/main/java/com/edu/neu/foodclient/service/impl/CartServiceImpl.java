package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.Cart;
import com.edu.neu.foodclient.mapper.CartMapper;
import com.edu.neu.foodclient.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper mapper;

    @Override
    public int insertCart(Cart cart) {

        Cart temp = mapper.selectCart(cart);
        System.out.println(temp);
        if (temp==null){
            mapper.insertCart(cart);
        }else {
            cart.setFnum(temp.getFnum()+cart.getFnum());
            mapper.updateCart(cart);
        }
        return 1;
    }

    @Override
    public int clearCart() {
        return mapper.clearCart();
    }

    @Override
    public int deleteCartItem(Cart cart) {
        return mapper.deleteCartItem(cart);
    }

    @Override
    public Cart selectCart(Cart cart) {
        return mapper.selectCart(cart);
    }

    @Override
    public int getCartTypeNum() {
        return mapper.getCartTypeNum();
    }

    @Override
    public int updateCart(Cart cart) {
        return mapper.updateCart(cart);
    }

    @Override
    public List<Cart> getCarts() {
        return mapper.getCarts();
    }

    @Override
    public List<Cart> getCartsByFids(int[] idList) {
        return mapper.getCartsByFids(idList);
    }

}
