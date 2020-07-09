package com.edu.neu.foodclient.entity;

public class Food {
    private int fid;
    //second id
    private int tid;
    private String fname;
    private String fpic;
    private double fcost;
    private double fprice;
    private double fdiscount;
    private int forder;
    private String fdesc;
    private String fregtime;
    private int fused;

    public double getFcost() {
        return fcost;
    }

    public void setFcost(double fcost) {
        this.fcost = fcost;
    }

    public double getFdiscount() {
        return fdiscount;
    }

    public void setFdiscount(double fdiscount) {
        this.fdiscount = fdiscount;
    }

    public int getFused() {
        return fused;
    }

    public void setFused(int fused) {
        this.fused = fused;
    }

    public Food() {
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFpic() {
        return fpic;
    }

    public void setFpic(String fpic) {
        this.fpic = fpic;
    }

    public double getFprice() {
        return fprice;
    }

    public void setFprice(double fprice) {
        this.fprice = fprice;
    }

    public int getForder() {
        return forder;
    }

    public void setForder(int forder) {
        this.forder = forder;
    }

    public String getFdesc() {
        return fdesc;
    }

    public void setFdesc(String fdesc) {
        this.fdesc = fdesc;
    }

    public String getFregtime() {
        return fregtime;
    }

    public void setFregtime(String fregtime) {
        this.fregtime = fregtime;
    }

    @Override
    public String toString() {
        return "Food{" +
                "fid=" + fid +
                ", tid=" + tid +
                ", fname='" + fname + '\'' +
                ", fpic='" + fpic + '\'' +
                ", fcost=" + fcost +
                ", fprice=" + fprice +
                ", fdiscount=" + fdiscount +
                ", forder=" + forder +
                ", fdesc='" + fdesc + '\'' +
                ", fregtime='" + fregtime + '\'' +
                ", fused=" + fused +
                '}';
    }

    public Food(int fid, int tid, String fname, String fpic, double fcost, double fprice, double fdiscount, int forder, String fdesc, String fregtime, int fused) {
        this.fid = fid;
        this.tid = tid;
        this.fname = fname;
        this.fpic = fpic;
        this.fcost = fcost;
        this.fprice = fprice;
        this.fdiscount = fdiscount;
        this.forder = forder;
        this.fdesc = fdesc;
        this.fregtime = fregtime;
        this.fused = fused;
    }
}
