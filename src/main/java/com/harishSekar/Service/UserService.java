package com.harishSekar.Service;

import com.harishSekar.Entity.User;

import java.util.List;

public interface UserService {
    public List<User> getUsers();
    public User getUser(String id);
    public String addUser(User user);
    public String deleteUser(String id);
    public String updateUser(String id);
}
