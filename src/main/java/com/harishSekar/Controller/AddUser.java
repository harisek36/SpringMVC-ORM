package com.harishSekar.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AddUser {
    @GetMapping(value = "/adduser")
    public String AddUser(){
        return "adduser";
    }

}
