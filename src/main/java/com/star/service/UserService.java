package com.star.service;

import com.star.entity.User;

public interface UserService {
    User login(String username, String password);
    void register(String username, String password);
}
