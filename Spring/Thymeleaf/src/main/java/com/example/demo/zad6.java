package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class zad6 {
    @GetMapping(value = "/{dzialanie}/{a}/{b}")
    public String PrzykladZPath(@PathVariable String dzialanie, @PathVariable Long a,
                              @PathVariable Long b, Model model) throws Exception {
            switch(dzialanie)
            {
                case "dodawanie":
                    model.addAttribute("daneZKontrolera", String.valueOf(a + b));
                    break;
                case "odejmowanie":
                    model.addAttribute("daneZKontrolera", String.valueOf(a - b));
                    break;
                case "mnozenie":
                    model.addAttribute("daneZKontrolera", String.valueOf(a * b));
                    break;
                case "dzielenie":
                    model.addAttribute("daneZKontrolera", String.valueOf(a / b));
                    break;
            }
            return "StronaWidok";
        }
}
