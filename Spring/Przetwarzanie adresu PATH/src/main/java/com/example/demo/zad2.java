package com.example.demo;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class zad2 {
    @PostMapping(value = "/{path1}/{jakiesId1}/{path2}/{jakiesId2}")
    public String PrzykladZPath(@PathVariable String path1, @PathVariable Long jakiesId1,
            @PathVariable String path2, @PathVariable Long jakiesId2) throws Exception {
        return "Z adresu pozyskałem następujące dane: zasob1 = " + path1 + " przekazana liczba1 to: " + jakiesId1
                + " zasob2 = " +path2 + " przekazana liczba2 to: " + jakiesId2;
    }
}