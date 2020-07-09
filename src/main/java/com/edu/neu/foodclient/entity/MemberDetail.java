package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0703
 * info：会员积分信息
 */
public class MemberDetail {
    private  int clientid;
    private double updateamount;
    private  String description;
    private  String  updatetime;

    public MemberDetail() {
    }

    public int getClientid() {
        return clientid;
    }

    public void setClientid(int clientid) {
        this.clientid = clientid;
    }

    public double getUpdateamount() {
        return updateamount;
    }

    public void setUpdateamount(double updateamount) {
        this.updateamount = updateamount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    @Override
    public String toString() {
        return "MemberDetail{" +
                "clientid=" + clientid +
                ", updateamount=" + updateamount +
                ", description='" + description + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }

}
