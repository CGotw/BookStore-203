package com.my.test;

import com.my.dao.OrderDao;
import com.my.dao.impl.OrderDaoImpl;
import com.my.pojo.Order;
import org.junit.Test;


import java.math.BigDecimal;
import java.util.Date;


public class OrderDaoTest {
    @Test
    public void saveOrder(){
        OrderDao orderDao=new OrderDaoImpl();
        orderDao.saveOrder(new Order("123456789",new Date(),new BigDecimal(100),0,1));
    }
}
