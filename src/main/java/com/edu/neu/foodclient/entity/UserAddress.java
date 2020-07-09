package com.edu.neu.foodclient.entity;

public class UserAddress {
    private int addressid;
    private int userid;
    private String username;
    private String phone;
    private String province;
    private String city;
    private String district;
    private String address;
    private String postal;

    public int getAddressid() {
        return addressid;
    }

    public void setAddressid(int addressid) {
        this.addressid = addressid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostal() {
        return postal;
    }

    public void setPostal(String postal) {
        this.postal = postal;
    }

    public UserAddress(int addressid, int userid, String username, String phone, String province, String city, String district, String address, String postal) {
        this.addressid = addressid;
        this.userid = userid;
        this.username = username;
        this.phone = phone;
        this.province = province;
        this.city = city;
        this.district = district;
        this.address = address;
        this.postal = postal;
    }

    public UserAddress(){

    }

    @Override
    public String toString() {
        return "UserAddress{" +
                "addressid=" + addressid +
                ", userid=" + userid +
                ", username='" + username + '\'' +
                ", phone='" + phone + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", address='" + address + '\'' +
                ", postal='" + postal + '\'' +
                '}';
    }
}
