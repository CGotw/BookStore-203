package com.my.test;

import com.my.pojo.User;
import com.my.service.UserService;
import com.my.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceImplTest {
    UserService userService=new UserServiceImpl();

    @Test
    public void registUser() {
        userService.registUser(new User(null,"bbj","666","abj@1668.com"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null,"1bj","666",null)));
    }

    @Test
    public void exitUsername() {
        if(userService.exitUsername("ss")){
            System.out.println("用户名已存在");
        }
        else{
            System.out.println("用户名可用");
        }
    }
}