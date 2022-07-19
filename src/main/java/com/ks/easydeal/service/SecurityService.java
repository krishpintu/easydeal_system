package com.ks.easydeal.service;

public interface SecurityService {
    boolean isAuthenticated();
    void autoLogin(String username, String password);
}
