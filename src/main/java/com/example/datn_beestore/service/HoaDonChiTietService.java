package com.example.datn_beestore.service;


import com.example.datn_beestore.entyti.HoaDonChiTiet;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


public interface HoaDonChiTietService {
    List<HoaDonChiTiet> findAll();

    HoaDonChiTiet findById(Long id);

    void deleteById(Long id);

    void saveOrUpdate(HoaDonChiTiet hoaDonChiTiet);

    List<HoaDonChiTiet> findByIdHoaDon(Long idHoaDon);

    List<HoaDonChiTiet> finTop5HDCT();

    List<Object[]> findByTongSoLuongBetween(
            Date startDate,
            Date endDate);

    List<Object[]> findByTongSoLuongNgay(Date ngayTao);

    List<Object[]> findByTongSoLuongThang(Date ngayTao);

    Integer sumSanPhamHoaDonThang(Date ngayTao);

    Integer sumSanPhamHoaDonNgay(Date ngayTao);

    Integer sumSanPhamHoaDonBetween(Date startDate,
                                    Date endDate);

    List<Object[]> thongKeSanPhamTheoNgay(
            Date startDateChart,
            Date endDateChart
    );

    Integer sumSanPhamHoaDonAll();

    List<Object[]> findByTongSoLuongAll();

    List<Object[]> thongKeSanPhamTheoNgayMacDinh30Ngay(
    );

}
