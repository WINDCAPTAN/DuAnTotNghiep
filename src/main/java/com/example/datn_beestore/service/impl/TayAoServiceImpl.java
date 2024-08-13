package com.example.datn_beestore.service.impl;


import com.example.datn_beestore.entyti.TayAo;
import com.example.datn_beestore.repository.TayAoRepository;
import com.example.datn_beestore.service.TayAoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TayAoServiceImpl implements TayAoService {

    @Autowired
    TayAoRepository tayAoRepository;

    @Override
    public List<TayAo> findAll() {

        Sort sort = Sort.by(Sort.Direction.DESC, "ngaySua");
        return tayAoRepository.findAll(sort);

    }

    @Override
    public List<TayAo> getAllDangHoatDong() {

        return tayAoRepository.fillAllDangHoatDong();

    }

    @Override
    public List<TayAo> getAllNgungHoatDong() {

        return tayAoRepository.fillAllNgungHoatDong();

    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public TayAo save(TayAo tayAo) {
        return tayAoRepository.save(tayAo);
    }


    @Override
    public boolean checkTenTrung(String ten) {
        for (TayAo de : tayAoRepository.findAll()) {
            if (de.getTen().equalsIgnoreCase(ten)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean checkTenTrungSua(Long id, String ten) {
        for (TayAo de : tayAoRepository.findAll()) {
            if (de.getTen().equalsIgnoreCase(ten)) {
                if (!de.getId().equals(id)){
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public TayAo update(TayAo tayAo) {

        return tayAoRepository.save(tayAo);

    }

    @Override
    public TayAo getById(Long id) {

        return tayAoRepository.findById(id).get();

    }

}
