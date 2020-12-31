package com.my.dao.impl;

import com.my.dao.UserDao;
import com.my.pojo.User;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User queryUserByUsername(String user_name) {
        String sql = "select `id`,`user_name`,`password`,`email` from t_user where user_name = ?";
        return queryForOne(User.class, sql, user_name);
    }

    @Override
    public User queryUserByUsernameAndPassword(String user_name, String password) {
        String sql = "select `id`,`user_name`,`password`,`email` from t_user where user_name = ? and password = ?";
        return queryForOne(User.class, sql, user_name,password);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into t_user(`user_name`,`password`,`email`) values(?,?,?)";
        return update(sql, user.getUsername(),user.getPassword(),user.getEmail());
    }
}
