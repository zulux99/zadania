package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
class zad6 {
    @RequestMapping("/szablon")
    public String hello() {
        return "StronaWidok";
    }
}
//TODO: nie działa thymeleaf