package com.example.datn_beestore.service;


import com.example.datn_beestore.entyti.KichCo;

import java.util.List;

public interface KichCoService {

    List<KichCo> findAll();

    List<KichCo> getAllDangHoatDong();

    List<KichCo> getAllNgungHoatDong();

    void deleteById(Long id);

    KichCo save(KichCo kichCo);

    boolean checkTenTrung(String ten);

    boolean checkTenTrungSua(Long id, String ten);

    KichCo update(KichCo kichCo);

    KichCo getById(Long id);

}
