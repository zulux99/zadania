package com.example.demo;

import org.springframework.web.bind.annotation.*;
@RestController
public class zad4 {
    @RequestMapping("/Request2Param")
    public String  ExampleRequestParam( @RequestParam("imie") String imie , @RequestParam("nazwisko") String nazwisko ,
                                        @RequestParam("pesel") Long pesel ,
                                        @RequestParam(value = "email" , required = false) String email,
                                        @RequestParam(value = "telefon" , required = false) Long telefon)
            throws Exception {
        String emailx = "";
        String telefonx = "";
        if (email != null)  emailx = "Email: " + email + "<br>";
        if (telefon != null)  telefonx = "Telefon: " + telefon + "<br>";
        return "Imię: " + imie + "<br>" +
        "Nazwisko: " + nazwisko + "<br>" +
        "Pesel: " + pesel + "<br>" + emailx + telefonx;
    }
}
