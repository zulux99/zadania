package com.example.demo;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/Request2Header")
public class zad5 {
    @RequestMapping(
            produces = MediaType.TEXT_HTML_VALUE  )
    public String  Example2RequestHeader(
            @RequestHeader("User-Agent") String klient,
            @RequestHeader("Accept-Language") String acceptLanguage,
            @RequestHeader("Cookie") String cookie,
            @RequestHeader("Host") String host
    ) throws Exception {
        return " <b>Przeglądarka/ klient HTTP:</b><br> " + klient
                +"<br><br> <b>Język:</b><br> " + acceptLanguage
                +" <br><br><b>Cookie:</b><br> " + cookie
                +"<br><br><b>Host:</b><br> " + host;
    }
}
