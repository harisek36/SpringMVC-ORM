package com.harishSekar.Service;

import com.harishSekar.Entity.User;

import java.util.List;

public interface UserService {
    public List<User> getUsers();
    public boolean getUser(String loginID, String password);
    public void saveUser(User user);
    public String deleteUser(String id);
    public String updateUser(String id);
}
