package com.harishSekar.Controller;

import com.harishSekar.DAO.UserDAO;
import com.harishSekar.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/userlist")
    public String listUser(Model model){

        List<User> userList =  userDAO.getCustomers();
        for (User user :userList){
            System.out.println(user.getFirstName());
        }
        model.addAttribute("userList",userList);
        return "home";
    }

}
