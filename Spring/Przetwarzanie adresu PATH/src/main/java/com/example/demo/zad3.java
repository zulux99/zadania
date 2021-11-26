package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class zad3 {
    @GetMapping(value = "/{dzialanie}/{a}/{b}")
    public long PrzykladZPath(@PathVariable String dzialanie, @PathVariable Long a,
                              @PathVariable Long b) throws Exception {
        switch(dzialanie)
        {
            case "dodawanie":
                return a + b;
            case "odejmowanie":
                return a - b;
            case "mnozenie":
                return a * b;
            case "dzielenie":
                return a / b;
        }
        return 0;
    }
}