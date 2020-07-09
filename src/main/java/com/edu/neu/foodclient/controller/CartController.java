package com.edu.neu.foodclient.controller;

import com.edu.neu.foodclient.entity.Cart;
import com.edu.neu.foodclient.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cart")
public class CartController {

    @Autowired
    CartService cartService;

    @RequestMapping("/insertCart")
    public int insertCart(@RequestBody Cart cart){
        System.out.println(cart);
        return cartService.insertCart(cart);
    }

    @RequestMapping("/selectCart")
    public Cart selectCart(@RequestBody Cart cart){
        return cartService.selectCart(cart);
    }

    @RequestMapping("/getCartTypeNum")
    public int getNum(){
        return cartService.getCartTypeNum();
    }

    @RequestMapping("/getCart")
    public List<Cart> getCarts(){
        return cartService.getCarts();
    }

    @RequestMapping("/deleteCartItems")
    public int deleteCartItems(@RequestBody int[] carts){
        for (int i=0;i<carts.length;i++){
            System.out.println(carts[i]);
            Cart cart=new Cart();
            cart.setFid(carts[i]);
            cartService.deleteCartItem(cart);
        }
        System.out.println(carts.length);
        return 0;
    }
    @RequestMapping("/deleteCartItem")
    public int deleteCartItem(@RequestBody Cart cart){
        System.out.println(cart);
        cartService.deleteCartItem(cart);
        return 0;
    }
    @RequestMapping("/getCartsByFids")
    public List<Cart> getCartsByFids(@RequestBody int[] idList){

        return cartService.getCartsByFids(idList);
    }
    @RequestMapping("/updataCart")
    public int updataCart(@RequestParam("fnum") int fnum,@RequestParam("fid") int fid){
        System.out.println(fnum);
        System.out.println(fid);
        Cart cart = new Cart();
        cart.setFid(fid);
        cart.setFnum(fnum);
        cartService.updateCart(cart);
        return 1;
    }

}
