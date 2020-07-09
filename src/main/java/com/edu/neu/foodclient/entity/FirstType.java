package com.edu.neu.foodclient.entity;

import java.util.List;

public class FirstType {

    private int ftid;
    private String ftname;
    private List<SecondType> secondTypeList;
    private int ftused;

    public int getFtid() {
        return ftid;
    }

    public void setFtid(int ftid) {
        this.ftid = ftid;
    }

    public String getFtname() {
        return ftname;
    }

    public void setFtname(String ftname) {
        this.ftname = ftname;
    }

    public List<SecondType> getSecondTypeList() {
        return secondTypeList;
    }

    public void setSecondTypeList(List<SecondType> secondTypeList) {
        this.secondTypeList = secondTypeList;
    }

    public int getFtused() {
        return ftused;
    }

    public void setFtused(int ftused) {
        this.ftused = ftused;
    }

    public FirstType(int ftid, String ftname, List<SecondType> secondTypeList, int ftused) {
        this.ftid = ftid;
        this.ftname = ftname;
        this.secondTypeList = secondTypeList;
        this.ftused = ftused;
    }
    public FirstType(){

    }

    @Override
    public String toString() {
        return "FirstType{" +
                "ftid=" + ftid +
                ", ftname='" + ftname + '\'' +
                ", secondTypeList=" + secondTypeList +
                ", ftused=" + ftused +
                '}';
    }
}

