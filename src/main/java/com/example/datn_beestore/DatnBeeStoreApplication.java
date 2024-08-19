package com.example.datn_beestore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class DatnBeeStoreApplication {

    public static void main(String[] args) {
        SpringApplication.run(DatnBeeStoreApplication.class, args);
    }

}
