package com.harishSekar.Controller;

import com.harishSekar.Entity.User;
import com.harishSekar.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class UserList {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/userlist")
    public String listUser(Model model){

        List<User> userList =  userService.getUsers();

        model.addAttribute("userList",userList);
        return "userlist";
    }

}
