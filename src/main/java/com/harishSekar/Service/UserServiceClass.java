package com.harishSekar.Service;

import com.harishSekar.DAO.UserDAO;
import com.harishSekar.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceClass implements UserService {

    @Autowired
    UserDAO userDAO;

    @Transactional(readOnly = true)
    public List<User> getUsers() {
        return userDAO.getCustomers();
    }

    public boolean getUser(String loginID,String password) {

        return true;
    }

    @Transactional
    public void saveUser(User user) {
        userDAO.saveUser(user);
    }

    public String deleteUser(String id) {
        return null;
    }

    public String updateUser(String id) {
        return null;
    }
}
