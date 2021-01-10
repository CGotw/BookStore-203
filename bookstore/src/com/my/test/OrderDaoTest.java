package com.my.test;

import com.my.dao.OrderDao;
import com.my.dao.impl.OrderDaoImpl;
import com.my.pojo.Book;
import com.my.pojo.Order;
import org.junit.Test;


import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


public class OrderDaoTest {
    @Test
    public void saveOrder(){
        OrderDao orderDao=new OrderDaoImpl();
        orderDao.saveOrder(new Order("123456789",new Date(),new BigDecimal(100),0,1));
    }

    @Test
    public void queryOrders(){
        OrderDao orderDao=new OrderDaoImpl();
        for(Order queryOrder :orderDao.queryOrders()){
            System.out.println(queryOrder);
        }
    }

    @Test
    public void queryOrdersByUser_id(){
        OrderDao orderDao=new OrderDaoImpl();
        for(Order queryOrder :orderDao.queryOrdersByUser_id(1)){
            System.out.println(queryOrder);
        }
    }

}
