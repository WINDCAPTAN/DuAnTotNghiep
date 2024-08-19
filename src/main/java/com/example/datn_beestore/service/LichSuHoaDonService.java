package com.example.datn_beestore.service;



import com.example.datn_beestore.entyti.LichSuHoaDon;

import java.util.List;

public interface LichSuHoaDonService {
    List<LichSuHoaDon> findAll();
    LichSuHoaDon findById(Long id);
    void deleteById(Long id);
    void saveOrUpdate(LichSuHoaDon lichSuHoaDon);
    List<LichSuHoaDon> findByIdhd(Long idhd);

    List<LichSuHoaDon> findByIdhdNgaySuaAsc(Long idhd);

}
