package com.example.datn_beestore.service;

import com.example.datn_beestore.entyti.ThuongHieu;

import java.util.List;

public interface ThuongHieuService {

    List<ThuongHieu> findAll();

    List<ThuongHieu> getAllDangHoatDong();

    List<ThuongHieu> getAllNgungHoatDong();

    void deleteById(Long id);

    ThuongHieu save(ThuongHieu thuongHieu);

    boolean checkTenTrung(String ten);

    boolean checkTenTrungSua(Long id, String ten);

    ThuongHieu update(ThuongHieu thuongHieu);

    ThuongHieu getById(Long id);

}
