package com.harishSekar.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeSignIn {

    @GetMapping(value = "/home")
    public String HomeSignIn(){
        return "home";
    }
}
