package com.my.dao.impl;

import com.my.dao.OrderDao;
import com.my.pojo.Book;
import com.my.pojo.Order;

import java.util.List;

public class OrderDaoImpl extends BaseDao implements OrderDao {
    @Override
    public int saveOrder(Order order) {
        String sql = "insert into t_order(`order_id`,`create_time`,`price`,`status`,`user_id`) values(?,?,?,?,?)";

        return update(sql,order.getOrder_id(),order.getCreate_time(),order.getPrice(),order.getStatus(),order.getUser_id());
    }

    @Override
    public List<Order> queryOrders() {
        String sql = "select `order_id` , `create_time` , `price` , `price` , `status` , `user_id`" +
                " from t_order";
        return queryForList(Order.class, sql);
    }

    @Override
    public List<Order> queryOrdersByUser_id(Integer id) {
        String sql = "select `order_id` , `create_time` , `price` , `price` , `status` , `user_id`" +
                " from t_order where user_id = ?";
        return queryForList(Order.class, sql,id);
    }
}
