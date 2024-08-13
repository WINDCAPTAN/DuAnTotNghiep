package com.example.datn_beestore.service;


import com.example.datn_beestore.entyti.SanPham;

import java.util.List;

public interface SanPhamSerivce {

    List<SanPham> getAll();

    List<SanPham> getAllDangHoatDong();

    List<SanPham> getAllNgungHoatDong();

    SanPham add(SanPham sanPham);

    SanPham update(SanPham sanPham);

    void remove(Long id);

    SanPham getById(Long id);

    Integer genMaTuDong();

    boolean checkTenTrung(String ten);

    boolean checkTenTrungSua(String ma, String ten);

}
