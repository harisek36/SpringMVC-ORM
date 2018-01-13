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
public class AddUser {
    @Autowired
    UserService userService;

    @GetMapping(value = "/adduser")
    public String AddUser(Model model){
        User newUser = new User();
        model.addAttribute("newUser",newUser);
        return "adduser";
    }

    @PostMapping(value = "/saveUser")
   public String saveUser(@ModelAttribute("newUser") User newUser){
        userService.saveUser(newUser);
        return "redirect:/home";

   }
}
