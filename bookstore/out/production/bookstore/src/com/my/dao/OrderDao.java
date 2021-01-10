package com.my.dao;

import com.my.pojo.Book;
import com.my.pojo.Order;

import java.util.List;

public interface OrderDao {

    public int saveOrder(Order order);

    public List<Order> queryOrders();

    public List<Order> queryOrdersByUser_id(Integer id);

}
