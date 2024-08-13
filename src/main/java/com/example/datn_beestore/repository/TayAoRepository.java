package com.example.datn_beestore.repository;


import com.example.datn_beestore.entyti.TayAo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TayAoRepository extends JpaRepository<TayAo,Long> {

    @Query(value = "select * from tay_ao where trang_thai = 0",nativeQuery = true)
    List<TayAo> fillAllDangHoatDong();

    @Query(value = "select * from tay_ao where trang_thai = 1",nativeQuery = true)
    List<TayAo> fillAllNgungHoatDong();

    @Query(value = "SELECT * FROM tay_ao WHERE LOWER(ten) = LOWER(:name)", nativeQuery = true)
    TayAo findDeGiayByTen(@Param("name") String name);


}

