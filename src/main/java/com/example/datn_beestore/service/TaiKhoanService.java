package com.example.datn_beestore.service;


import com.example.datn_beestore.entyti.TaiKhoan;

public interface TaiKhoanService {
    public String addUser(TaiKhoan userInfo);

    public String updateUser(TaiKhoan userInfo);

    public void sendEmail(TaiKhoan taiKhoan, String path);

    public void sendEmail1(TaiKhoan taiKhoan, String url, String random);

    public boolean verifyAccount(String verificationPassWord, String resetPass);

    public TaiKhoan saveUser(TaiKhoan user, String url);

    TaiKhoan getTaiKhoanByName(String name);
}
