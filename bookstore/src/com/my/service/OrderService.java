package com.my.service;

import com.my.pojo.Cart;

public interface OrderService {
    public String createOrder(Cart cart,Integer userId);
}
