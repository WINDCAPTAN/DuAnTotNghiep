package com.example.datn_beestore.service.impl;



import com.example.datn_beestore.entyti.PhuongThucThanhToan;
import com.example.datn_beestore.repository.PhuongThucThanhToanRepository;
import com.example.datn_beestore.service.PhuongThucThanhToanServie;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class PhuongThucThanhToanImpl implements PhuongThucThanhToanServie {
    @Autowired
    PhuongThucThanhToanRepository phuongThucThanhToanRepository;

    @Override
    public List<PhuongThucThanhToan> findAll() {
        return phuongThucThanhToanRepository.findAll();
    }
}
