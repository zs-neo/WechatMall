package com.edu.neu.foodclient.entity;

/**
 * created:王明豪 2020 0620
 * info：优惠卷信息
 */
public class Coupon {
    private  int couponid;
    private  String couponname;
    private  String coupondesc;
    private  String couponbegtime;
    private  String couponendtime;
    private  int couponstatus;
    private  int couponamount;
    private  int couponscore;//积分
    private  int coupongetnum;//已领取数量
    private  int couponusednum;//已使用数

    private  int limituser;//限定普通用户或者vip
    public Coupon() {
    }

    public String getCouponname() {
        return couponname;
    }

    public void setCouponname(String couponname) {
        this.couponname = couponname;
    }

    public String getCoupondesc() {
        return coupondesc;
    }

    public void setCoupondesc(String coupondesc) {
        this.coupondesc = coupondesc;
    }

    public String getCouponbegtime() {
        return couponbegtime;
    }

    public void setCouponbegtime(String couponbegtime) {
        this.couponbegtime = couponbegtime;
    }

    public String getCouponendtime() {
        return couponendtime;
    }

    public void setCouponendtime(String couponendtime) {
        this.couponendtime = couponendtime;
    }

    public int getCouponstatus() {
        return couponstatus;
    }

    public void setCouponstatus(int couponstatus) {
        this.couponstatus = couponstatus;
    }

    public int getCouponamount() {
        return couponamount;
    }

    public void setCouponamount(int couponamount) {
        this.couponamount = couponamount;
    }

    public int getCouponscore() {
        return couponscore;
    }

    public void setCouponscore(int couponscore) {
        this.couponscore = couponscore;
    }

    public int getCoupongetnum() {
        return coupongetnum;
    }

    public void setCoupongetnum(int coupongetnum) {
        this.coupongetnum = coupongetnum;
    }

    public int getCouponusednum() {
        return couponusednum;
    }

    public void setCouponusednum(int couponusednum) {
        this.couponusednum = couponusednum;
    }

    public int getLimituser() {
        return limituser;
    }

    public void setLimituser(int limituser) {
        this.limituser = limituser;
    }

    public int getCouponid() {
        return couponid;
    }

    public void setCouponid(int couponid) {
        this.couponid = couponid;
    }

    @Override
    public String toString() {
        return "Coupon{" +
                "couponid=" + couponid +
                ", couponname='" + couponname + '\'' +
                ", coupondesc='" + coupondesc + '\'' +
                ", couponbegtime='" + couponbegtime + '\'' +
                ", couponendtime='" + couponendtime + '\'' +
                ", couponstatus=" + couponstatus +
                ", couponamount=" + couponamount +
                ", couponscore=" + couponscore +
                ", coupongetnum=" + coupongetnum +
                ", couponusednum=" + couponusednum +
                ", limituser=" + limituser +
                '}';
    }
}
