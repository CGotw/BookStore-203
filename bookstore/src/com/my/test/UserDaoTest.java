package com.my.test;

import com.my.dao.UserDao;
import com.my.dao.impl.UserDaoImpl;
import com.my.pojo.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {

    @Test
    public void queryUserByUsername() {
        UserDao userDao=new UserDaoImpl();
        System.out.println(userDao.queryUserByUsername("li"));
    }

    @Test
    public void queryUserByUsernameAndPassword() {
        UserDao userDao=new UserDaoImpl();
        System.out.println(userDao.queryUserByUsernameAndPassword("admins","admin"));
    }

    @Test
    public void saveUser() {
        UserDao userDao=new UserDaoImpl();
        System.out.println(userDao.saveUser(new User(null,"liasdf","lilili","sf@com")));
    }
}