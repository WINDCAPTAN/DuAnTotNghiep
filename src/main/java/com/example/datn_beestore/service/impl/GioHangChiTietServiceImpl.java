package com.example.datn_beestore.service.impl;


import com.example.datn_beestore.entyti.ChiTietSanPham;
import com.example.datn_beestore.entyti.GioHang;
import com.example.datn_beestore.entyti.GioHangChiTiet;
import com.example.datn_beestore.entyti.HoaDon;
import com.example.datn_beestore.entyti.HoaDonChiTiet;
import com.example.datn_beestore.entyti.LichSuHoaDon;
import com.example.datn_beestore.entyti.TaiKhoan;
import com.example.datn_beestore.entyti.Voucher;
import com.example.datn_beestore.repository.GioHangChiTietRepository;
import com.example.datn_beestore.repository.HoaDonChiTietRepository;
import com.example.datn_beestore.repository.HoaDonRepository;
import com.example.datn_beestore.service.GioHangChiTietService;
import com.example.datn_beestore.service.LichSuHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class GioHangChiTietServiceImpl implements GioHangChiTietService {

    @Autowired
    private GioHangChiTietRepository repository;

    @Autowired
    private HoaDonRepository repositoryHoaDon;

    @Autowired
    private HoaDonChiTietRepository repositoryHoaDonChiTiet;

    @Autowired
    private LichSuHoaDonService lichSuHoaDonService;


    @Override
    public List<GioHangChiTiet> findAll() {

        return repository.findAll();

    }

    @Override
    public List<GioHangChiTiet> findAllByIdGioHang(Long idGioHang) {

        return repository.getfindAllByIdGioHang(idGioHang);

    }

    @Override
    public GioHangChiTiet fillById(Long id) {

        return repository.findById(id).get();

    }

    @Override
    public GioHangChiTiet fillByIdCTSP(Long idCTSP) {

        return repository.fillByIdCTSP(idCTSP);

    }

    @Override
    public Integer soLuongSPGioHangCT(Long idGioHang) {

        return repository.soLuongSpTrongGioHangCT(idGioHang);

    }

    @Override
    public List<GioHangChiTiet> findAllById(List<String> listIdString, Long idGioHang) {
        List<Long> listIdLong = new ArrayList<>();
        for (String str : listIdString) {
            try {
                Long value = Long.parseLong(str);
                listIdLong.add(value);
            } catch (NumberFormatException e) {
                e.fillInStackTrace();
                // Xử lý ngoại lệ nếu có giá trị không hợp lệ
            }
        }

        return repository.findAllByIdGHCT(listIdLong, idGioHang);

    }

    @Override
    public HoaDonChiTiet addHoaDon(List<String> listStringIdGioHangCT, Long tongTien, Long tongTienSale,
                                   String hoVaTen, String soDienThoai, String tienShip, String tienGiam, String email,
                                   String voucher, String diaChiCuThe, String ghiChu, TaiKhoan taiKhoan,
                                   String phuongXaID, String quanHuyenID, String thanhPhoID, Long idGioHang) {
        HoaDon hoaDon = new HoaDon();
        hoaDon.setMaHoaDon("HD" + hoaDon.getId());
        hoaDon.setLoaiHoaDon(1);
        hoaDon.setPhiShip(Long.valueOf(tienShip));
        hoaDon.setTienGiam(Long.valueOf(tienGiam));
        hoaDon.setTongTien(tongTien);
        hoaDon.setTongTienKhiGiam(tongTienSale);
        hoaDon.setGhiChu(ghiChu);
        hoaDon.setNguoiNhan(hoVaTen);
        hoaDon.setSdtNguoiNhan(soDienThoai);
        hoaDon.setDiaChiNguoiNhan(diaChiCuThe);
        hoaDon.setEmailNguoiNhan(email);
        hoaDon.setNgayTao(new Date());
        hoaDon.setNgaySua(new Date());
        hoaDon.setTrangThai(0);
        hoaDon.setPhuongXa(phuongXaID);
        hoaDon.setQuanHuyen(quanHuyenID);
        hoaDon.setThanhPho(thanhPhoID);
        if (voucher != "") {
            hoaDon.setVoucher(Voucher.builder().id(Long.valueOf(voucher)).build());
        }

        hoaDon.setTaiKhoan(taiKhoan);
        repositoryHoaDon.save(hoaDon);

        lichSuHoaDonService.saveOrUpdate(LichSuHoaDon.builder()
                .ghiChu(ghiChu)
                .ngayTao(new Date())
                .ngaySua(new Date())
                .trangThai(0)
                .hoaDon(hoaDon)
                .build());

        hoaDon.setMaHoaDon("HD" + hoaDon.getId());

        repositoryHoaDon.save(hoaDon);


        List<GioHangChiTiet> listGioHangChiTiet = this.findAllById(listStringIdGioHangCT, idGioHang);

        for (GioHangChiTiet gioHangChiTiet : listGioHangChiTiet) {
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            hoaDonChiTiet.setSoLuong(gioHangChiTiet.getSoLuong());
            hoaDonChiTiet.setDonGia(gioHangChiTiet.getChiTietSanPham().getGiaHienHanh());
            hoaDonChiTiet.setHoaDon(HoaDon.builder().id(hoaDon.getId()).build());
            hoaDonChiTiet.setChiTietSanPham(gioHangChiTiet.getChiTietSanPham());
            hoaDonChiTiet.setTrangThai(0);
            hoaDonChiTiet.setNgaySua(new Date());
            hoaDonChiTiet.setNgayTao(new Date());
            repositoryHoaDonChiTiet.save(hoaDonChiTiet);
            repository.delete(gioHangChiTiet);
        }

        return null;

    }

    @Override
    public void deleteById(Long id) {

        repository.deleteById(id);

    }

    @Override
    public List<GioHangChiTiet> save(Long idGioHang, List<String> idChiTietSp, Integer soLuong) {
        List<GioHangChiTiet> gioHangChiTietList = repository.getByGioHangChiTiet(idGioHang, idChiTietSp);

        List<GioHangChiTiet> gioHangChiTietNewList = new ArrayList<>();

        // Nếu chưa có, thêm mới
        if (gioHangChiTietList.isEmpty()) {
            for (String idChiTiet : idChiTietSp) {
                GioHangChiTiet gioHangChiTietNew = new GioHangChiTiet();
                gioHangChiTietNew.setSoLuong(soLuong);
                gioHangChiTietNew.setNgayTao(new Date());
                gioHangChiTietNew.setNgaySua(new Date());
                ChiTietSanPham chiTietSanPham = ChiTietSanPham.builder().id(Long.valueOf(idChiTiet)).build();
                gioHangChiTietNew.setChiTietSanPham(chiTietSanPham);
                gioHangChiTietNew.setGioHang(GioHang.builder().id(idGioHang).build());
                gioHangChiTietNew.setTrangThai(0);

                gioHangChiTietNewList.add(gioHangChiTietNew);
            }
        } else {
            for (GioHangChiTiet gioHangChiTiet : gioHangChiTietList) {
                for (String idChiTiet : idChiTietSp) {
                    GioHangChiTiet gioHangChiTietNew = new GioHangChiTiet();
                    gioHangChiTietNew.setId(gioHangChiTiet.getId());
                    gioHangChiTietNew.setSoLuong(gioHangChiTiet.getSoLuong() + soLuong);
                    gioHangChiTietNew.setGhiChu(gioHangChiTiet.getGhiChu());
                    gioHangChiTietNew.setNgayTao(gioHangChiTiet.getNgayTao());
                    gioHangChiTietNew.setNgaySua(new Date());
                    ChiTietSanPham chiTietSanPham = ChiTietSanPham.builder().id(Long.valueOf(idChiTiet)).build();
                    gioHangChiTietNew.setChiTietSanPham(chiTietSanPham);
                    gioHangChiTietNew.setGioHang(gioHangChiTiet.getGioHang());
                    gioHangChiTietNew.setTrangThai(0);

                    gioHangChiTietNewList.add(gioHangChiTietNew);
                }
            }
        }

        return repository.saveAll(gioHangChiTietNewList);
    }


    @Override
    public GioHangChiTiet update(GioHangChiTiet gioHangChiTiet) {

        return repository.save(gioHangChiTiet);

    }

    @Override
    public List<GioHangChiTiet> findByTrangThai(Integer trangThai) {

        return null;

    }
}
