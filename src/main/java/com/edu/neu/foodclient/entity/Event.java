package com.edu.neu.foodclient.entity;
/**
 * created:王明豪 2020 0622
 * info：活动信息
 */
public class Event {
    private  int eventid;
    private  String ename;
    private  String epic;
    private  String edetailpic;
    private  String edesc;
    private  int estatus;
    private  String eventbegtime;
    private  String eventendtime;

    public Event() {
    }

    public int getEventid() {
        return eventid;
    }

    public void setEventid(int eventid) {
        this.eventid = eventid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEpic() {
        return epic;
    }

    public void setEpic(String epic) {
        this.epic = epic;
    }

    public String getEdetailpic() {
        return edetailpic;
    }

    public void setEdetailpic(String edetailpic) {
        this.edetailpic = edetailpic;
    }

    public String getEdesc() {
        return edesc;
    }

    public void setEdesc(String edesc) {
        this.edesc = edesc;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }

    public String getEventbegtime() {
        return eventbegtime;
    }

    public void setEventbegtime(String eventbegtime) {
        this.eventbegtime = eventbegtime;
    }

    public String getEventendtime() {
        return eventendtime;
    }

    public void setEventendtime(String eventendtime) {
        this.eventendtime = eventendtime;
    }

    @Override
    public String toString() {
        return "Event{" +
                "eventid=" + eventid +
                ", ename='" + ename + '\'' +
                ", epic='" + epic + '\'' +
                ", edetailpic='" + edetailpic + '\'' +
                ", edesc='" + edesc + '\'' +
                ", estatus=" + estatus +
                ", eventbegtime='" + eventbegtime + '\'' +
                ", eventendtime='" + eventendtime + '\'' +
                '}';
    }
}
