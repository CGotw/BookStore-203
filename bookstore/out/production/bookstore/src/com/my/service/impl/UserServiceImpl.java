package com.my.service.impl;

import com.my.dao.UserDao;
import com.my.dao.impl.UserDaoImpl;
import com.my.pojo.User;
import com.my.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao=new UserDaoImpl();


    @Override
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    /**
     * 返回null说明失败，返回有值登录成功
     * @param user
     * @return
     */
    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean exitUsername(String username) {
        if(userDao.queryUserByUsername(username)==null)
            return false;
        return true;
    }
}
