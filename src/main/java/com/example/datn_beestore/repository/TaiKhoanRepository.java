package com.example.datn_beestore.repository;

import com.example.datn_beestore.entyti.TaiKhoan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TaiKhoanRepository extends JpaRepository<TaiKhoan,Long> {
    Optional<TaiKhoan> findByTenTaiKhoan(String name);

     TaiKhoan findByMatKhau(String code);

    TaiKhoan findByEmail(String email);


}
