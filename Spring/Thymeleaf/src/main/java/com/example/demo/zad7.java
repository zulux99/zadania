package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class zad7 {
    @RequestMapping("/obiekt")
    public Object hello3(Model model) {
        Osoba osoba1 = new Osoba(1, "Jan", "Kowalski", "600-123-456", "przykladowy@mail.com");
        Osoba osoba2 = new Osoba(2, "Anna", "Nowak", "600-987-654", "anna@mail.com");
        model.addAttribute("osoba1", osoba1);
        model.addAttribute("osoba2", osoba2);
        return "obiektOsoba";
    }
}
