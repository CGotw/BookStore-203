package com.my.service;

import com.my.pojo.Book;
import com.my.pojo.Cart;
import com.my.pojo.Order;

import java.util.List;

public interface OrderService {
    public String createOrder(Cart cart,Integer userId);

    public List<Order> queryOrders();

    public List<Order> querOrdersByUser_id(Integer userId);
}
