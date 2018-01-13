package com.harishSekar.Controller;


import com.harishSekar.Entity.User;
import com.harishSekar.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeSignIn {

    @Autowired
    UserService userService;

    @GetMapping(value = "/home")
    public String HomeSignIn(Model model){
        User checkUser = new User();
        model.addAttribute("checkUser",checkUser);
        return "home";
    }

    @PostMapping(value = "/checkUser")
    public String checkUserLogin(@ModelAttribute("checkUser") User checkUser){

        checkUser.setFirstName("");
        checkUser.setEmailId("");
        System.out.println(checkUser.toString());
        if(userService.getUser(checkUser.getLoginId(),checkUser.getPassword()))
            return "userlist";
        else
            return "UserNotFound";

    }
}
