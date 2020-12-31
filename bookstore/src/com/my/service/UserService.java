package com.my.service;

import com.my.pojo.User;

public interface UserService {

    /**
     * 注册用户
     * @param user 用户
     */
    public void registUser(User user);

    /**
     * 登录
     * @param user
     * @return
     */
    public User login(User user);

    /**
     * 检查用户名是否可用
     * @param username
     * @return true表示用户名已存在，false表示用户名可用
     */
    public boolean exitUsername(String username);
}
