package com.ks.easydeal.service;

import com.ks.easydeal.model.User;

public interface UserService {
    void save(User user);
    User findByUsername(String username);
}
