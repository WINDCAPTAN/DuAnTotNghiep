package com.example.datn_beestore.service;


import com.example.datn_beestore.entyti.TayAo;

import java.util.List;

public interface TayAoService {

    List<TayAo> findAll();

    List<TayAo> getAllDangHoatDong();

    List<TayAo> getAllNgungHoatDong();

    void deleteById(Long id);

    TayAo save(TayAo loaiDe);

    boolean checkTenTrung(String ten);

    boolean checkTenTrungSua(Long id, String ten);

    TayAo update(TayAo loaiDe);

    TayAo getById(Long id);

}
