package com.example.demo;

import org.springframework.web.bind.annotation.*;
@RestController
public class ExampleRequestParam {
    @RequestMapping("/RequestParam")
    public String  ExampleRequestParam( @RequestParam("imie") String imie , @RequestParam(value="miasto" , required=false) String miasto) throws Exception {
        String opis = "";
        if (miasto != null)
            opis=". Mieszkasz w mieście:" + miasto;
        return "Witaj " + imie + opis;
    }
}

