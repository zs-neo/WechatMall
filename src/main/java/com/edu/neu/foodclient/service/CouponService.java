package com.edu.neu.foodclient.service;

import com.edu.neu.foodclient.entity.Coupon;
import com.github.pagehelper.PageInfo;



import java.util.List;

public interface CouponService {

    List<Coupon> getAll();

    PageInfo<Coupon> getAllByPage(int pageNum, int pageSize);


    PageInfo<Coupon> fuzzySearch(int pageNum, int pageSize, Coupon coupon);


    boolean insertCoupon(Coupon coupon);

    boolean updateCoupon(Coupon coupon);

    boolean deleteCoupon(int couponid);

    boolean updateStatus(Coupon coupon);

    boolean deleteBatch(int[] couponids);





}
