package com.edu.neu.foodclient.mapper;



import com.edu.neu.foodclient.entity.Coupon;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CouponMapper {

    List<Coupon> getAll();

    List<Coupon> fuzzySearch(Coupon coupon);  //模糊搜索根据日期或者优惠卷名称

    int insertCoupon(Coupon coupon);

    int updateCoupon(Coupon coupon);

    int deleteCoupon(int couponid);

    int updateStatus(Coupon coupon);

    int deleteBatch(int[] couponids);

}
