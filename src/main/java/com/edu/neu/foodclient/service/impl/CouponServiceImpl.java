package com.edu.neu.foodclient.service.impl;

import com.edu.neu.foodclient.entity.Coupon;
import com.edu.neu.foodclient.mapper.CouponMapper;
import com.edu.neu.foodclient.service.CouponService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CouponServiceImpl implements CouponService {

    @Autowired
    private CouponMapper couponMapper;

    @Override
    public List<Coupon> getAll() {
        return couponMapper.getAll();
    }


    public PageInfo<Coupon> getAllByPage(int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);

        return new PageInfo<Coupon>(couponMapper.getAll());

    }

    @Override
    public PageInfo<Coupon> fuzzySearch(int pageNum, int pageSize,Coupon coupon) {
        PageHelper.startPage(pageNum, pageSize);

        return new PageInfo<Coupon>(couponMapper.fuzzySearch(coupon));
    }

    @Override
    public boolean insertCoupon(Coupon coupon) {
        int count=couponMapper.insertCoupon(coupon);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean updateCoupon(Coupon coupon) {

        int count=couponMapper.updateCoupon(coupon);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean deleteCoupon(int couponid) {
        int count=couponMapper.deleteCoupon(couponid);
        if(count>0) {
            return true;
        }
        return false;

    }

    @Override
    public boolean updateStatus(Coupon coupon) {
        int count=couponMapper.updateStatus(coupon);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean deleteBatch(int[] couponids) {
        int count=couponMapper.deleteBatch(couponids);
        if(count>0){
            return  true;
        }
        return false;
    }


}
