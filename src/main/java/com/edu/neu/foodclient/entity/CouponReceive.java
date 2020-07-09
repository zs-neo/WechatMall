package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0702
 * info：优惠卷领取信息
 */

public class CouponReceive {
    private  int crid;
    private  int clientid;
    private  int couponid;
    private String createtime;
    private int status;//0已领取未使用 1已使用 -1已过期

    public CouponReceive() {
    }

    public int getCrid() {
        return crid;
    }

    public void setCrid(int crid) {
        this.crid = crid;
    }

    public int getClientid() {
        return clientid;
    }

    public void setClientid(int clientid) {
        this.clientid = clientid;
    }

    public int getCouponid() {
        return couponid;
    }

    public void setCouponid(int couponid) {
        this.couponid = couponid;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "CouponReceive{" +
                "crid=" + crid +
                ", clientid=" + clientid +
                ", couponid=" + couponid +
                ", createtime='" + createtime + '\'' +
                ", status=" + status +
                '}';
    }
}
