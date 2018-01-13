package com.harishSekar.DAO;

import com.harishSekar.Entity.User;

import java.util.List;

public interface UserDAO  {
    public List<User> getCustomers();
    public void saveUser(User user);
    public void getUser(String loginID, String password);


}
