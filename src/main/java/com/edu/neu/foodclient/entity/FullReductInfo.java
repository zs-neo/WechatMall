package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0624
 * info：满减信息
 */
public class FullReductInfo {
    private  int frinfoid;
    private  String frname;
    private  String frdesc;
    private  int frshare;
    private  int frstatus;
    private  String frbegtime;
    private  String frendtime;

    public FullReductInfo() {
    }

    public int getFrinfoid() {
        return frinfoid;
    }

    public void setFrinfoid(int frinfoid) {
        this.frinfoid = frinfoid;
    }

    public String getFrname() {
        return frname;
    }

    public void setFrname(String frname) {
        this.frname = frname;
    }

    public String getFrdesc() {
        return frdesc;
    }

    public void setFrdesc(String frdesc) {
        this.frdesc = frdesc;
    }

    public int getFrshare() {
        return frshare;
    }

    public void setFrshare(int frshare) {
        this.frshare = frshare;
    }

    public int getFrstatus() {
        return frstatus;
    }

    public void setFrstatus(int frstatus) {
        this.frstatus = frstatus;
    }

    public String getFrbegtime() {
        return frbegtime;
    }

    public void setFrbegtime(String frbegtime) {
        this.frbegtime = frbegtime;
    }

    public String getFrendtime() {
        return frendtime;
    }

    public void setFrendtime(String frendtime) {
        this.frendtime = frendtime;
    }

    @Override
    public String toString() {
        return "FullReductInfo{" +
                "frinfoid=" + frinfoid +
                ", frname='" + frname + '\'' +
                ", frdesc='" + frdesc + '\'' +
                ", frshare=" + frshare +
                ", frstatus=" + frstatus +
                ", frbegtime='" + frbegtime + '\'' +
                ", frendtime='" + frendtime + '\'' +
                '}';
    }
}
