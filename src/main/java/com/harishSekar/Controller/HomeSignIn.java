package com.harishSekar.Controller;


import com.harishSekar.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeSignIn {

    @Autowired
    UserService userService;

    @GetMapping(value = "/home")
    public String HomeSignIn(){
        return "home";
    }

    @PostMapping(value = "/checkUser")
    public String checkUser(@ModelAttribute("login_id") String loginID, @ModelAttribute("pass_word") String password){

        System.out.println(loginID + password + " -------------------");
//           userService.getUser(f_loginID,f_password)
        return "userlist";

    }
}
