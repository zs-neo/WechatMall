package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0630
 * info：红包信息
 */
public class RedPacket {
    private  int rpid;
    private  int rpmoney;
    private  int needscore;
    private  String rpbegtime;
    private  String rpendtime;
    private  int status;

    public RedPacket() {
    }

    public int getRpid() {
        return rpid;
    }

    public void setRpid(int rpid) {
        this.rpid = rpid;
    }

    public int getRpmoney() {
        return rpmoney;
    }

    public void setRpmoney(int rpmoney) {
        this.rpmoney = rpmoney;
    }

    public int getNeedscore() {
        return needscore;
    }

    public void setNeedscore(int needscore) {
        this.needscore = needscore;
    }

    public String getRpbegtime() {
        return rpbegtime;
    }

    public void setRpbegtime(String rpbegtime) {
        this.rpbegtime = rpbegtime;
    }

    public String getRpendtime() {
        return rpendtime;
    }

    public void setRpendtime(String rpendtime) {
        this.rpendtime = rpendtime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "RedPacket{" +
                "rpid=" + rpid +
                ", rpmoney=" + rpmoney +
                ", needscore=" + needscore +
                ", rpbegtime='" + rpbegtime + '\'' +
                ", rpendtime='" + rpendtime + '\'' +
                ", status=" + status +
                '}';
    }
}
