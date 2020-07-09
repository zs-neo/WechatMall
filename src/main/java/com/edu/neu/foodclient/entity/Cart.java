package com.edu.neu.foodclient.entity;

public class Cart {
    private int fid;
    private int tid;
    private String fname;
    private String fpic;
    private double fcost;
    private double fprice;
    private double fdiscount;
    private String fdesc;
    private int fnum;

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

    public double getFcost() {
        return fcost;
    }

    public void setFcost(double fcost) {
        this.fcost = fcost;
    }

    public double getFprice() {
        return fprice;
    }

    public void setFprice(double fprice) {
        this.fprice = fprice;
    }

    public double getFdiscount() {
        return fdiscount;
    }

    public void setFdiscount(double fdiscount) {
        this.fdiscount = fdiscount;
    }

    public String getFdesc() {
        return fdesc;
    }

    public void setFdesc(String fdesc) {
        this.fdesc = fdesc;
    }

    public int getFnum() {
        return fnum;
    }

    public void setFnum(int fnum) {
        this.fnum = fnum;
    }

    public Cart(int fid, int tid, String fname, String fpic, double fcost, double fprice, double fdiscount, String fdesc, int fnum) {
        this.fid = fid;
        this.tid = tid;
        this.fname = fname;
        this.fpic = fpic;
        this.fcost = fcost;
        this.fprice = fprice;
        this.fdiscount = fdiscount;
        this.fdesc = fdesc;
        this.fnum = fnum;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "fid=" + fid +
                ", tid=" + tid +
                ", fname='" + fname + '\'' +
                ", fpic='" + fpic + '\'' +
                ", fcost=" + fcost +
                ", fprice=" + fprice +
                ", fdiscount=" + fdiscount +
                ", fdesc='" + fdesc + '\'' +
                ", fnum=" + fnum +
                '}';
    }
    public Cart(){

    }
}
