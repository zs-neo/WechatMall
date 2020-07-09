package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0701
 * info：会员信息
 */
public class Member {
    private  int clientid;
    private  String identityid;
    private  String realname;
    private  String certificationdate;
    private  double accumulatescores;
    private  int scores;

    public Member() {
    }

    public int getClientid() {
        return clientid;
    }

    public void setClientid(int clientid) {
        this.clientid = clientid;
    }

    public String getIdentityid() {
        return identityid;
    }

    public void setIdentityid(String identityid) {
        this.identityid = identityid;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getCertificationdate() {
        return certificationdate;
    }

    public void setCertificationdate(String certificationdate) {
        this.certificationdate = certificationdate;
    }

    public double getAccumulatescores() {
        return accumulatescores;
    }

    public void setAccumulatescores(double accumulatescores) {
        this.accumulatescores = accumulatescores;
    }

    public int getScores() {
        return scores;
    }

    public void setScores(int scores) {
        this.scores = scores;
    }

    @Override
    public String toString() {
        return "Member{" +
                "clientid=" + clientid +
                ", identityid='" + identityid + '\'' +
                ", realname='" + realname + '\'' +
                ", certificationdate='" + certificationdate + '\'' +
                ", accumulatescores=" + accumulatescores +
                ", scores=" + scores +
                '}';
    }
}
