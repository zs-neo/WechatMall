package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0702
 * info：红包领取信息
 */

public class RedPacketReceive {
    private  int id;
    private  int clientid;
    private  int rpid;
    private String createtime;
    private int status;//0已领取未使用 1已使用 -1已过期

    public RedPacketReceive() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getClientid() {
        return clientid;
    }

    public void setClientid(int clientid) {
        this.clientid = clientid;
    }

    public int getRpid() {
        return rpid;
    }

    public void setRpid(int rpid) {
        this.rpid = rpid;
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
        return "RedPacketReceive{" +
                "id=" + id +
                ", clientid=" + clientid +
                ", rpid=" + rpid +
                ", createtime='" + createtime + '\'' +
                ", status=" + status +
                '}';
    }
}
