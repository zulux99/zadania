package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class pierwszyController {

    @RequestMapping("/lista")
    public List metoda2() {
        List <String> kolekcja = new ArrayList<>();
        kolekcja.add("element nr 1");
        kolekcja.add("element nr 2");
        kolekcja.add("element nr 3");
        return kolekcja;
    }
    @RequestMapping("/tekst")
    public String metoda1() {
        String ciagZnakow = "Ala ma kota";
        return ciagZnakow;
    }
    @RequestMapping("/liczba")
    public Integer metoda3() {
        int liczba = 123;
        return liczba;
    }
}
