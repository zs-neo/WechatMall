package com.edu.neu.foodclient.entity;

public class SecondType {
    private int stid;
    private String stname;
    private int ftid;
    private int stused;
    private int isedited;

    public int getStid() {
        return stid;
    }

    public void setStid(int stid) {
        this.stid = stid;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }

    public int getFtid() {
        return ftid;
    }

    public void setFtid(int ftid) {
        this.ftid = ftid;
    }

    public int getStused() {
        return stused;
    }

    public void setStused(int stused) {
        this.stused = stused;
    }

    public int getIsedited() {
        return isedited;
    }

    public void setIsedited(int isedited) {
        this.isedited = isedited;
    }

    public SecondType(int stid, String stname, int ftid, int stused, int isedited) {
        this.stid = stid;
        this.stname = stname;
        this.ftid = ftid;
        this.stused = stused;
        this.isedited = isedited;
    }
    public SecondType(){

    }

    @Override
    public String toString() {
        return "SecondType{" +
                "stid=" + stid +
                ", stname='" + stname + '\'' +
                ", ftid=" + ftid +
                ", stused=" + stused +
                ", isedited=" + isedited +
                '}';
    }
}

