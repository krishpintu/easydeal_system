package com.ks.easydeal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String loginPage(){
        return "/pages/login";
    }

    @RequestMapping("/register")
    public String registerPage(){
        return "/pages/signup";
    }

    @RequestMapping({"/layout"})
    public String layoutPage(){
        return "/layouts/_layout";
    }

    @RequestMapping({"/","/index","/home"})
    public String homePage(){
        return "/pages/index";
    }
}
