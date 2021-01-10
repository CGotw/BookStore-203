package com.my.web;

import com.my.pojo.Order;
import com.my.pojo.User;
import com.my.service.OrderService;
import com.my.service.UserService;
import com.my.service.impl.OrderServiceImpl;
import com.my.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ManagerOrderServlet extends BaseServlet{
    private OrderService orderService = new OrderServiceImpl();
    private UserService userService=new UserServiceImpl();

    protected void listOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1 通过BookService查询全部图书
        List<Order> orders = orderService.queryOrders();
        //2 把全部图书保存到Request域中
        req.setAttribute("orders", orders);
        //3、请求转发到/pages/manager/book_manager.jsp页面
        req.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(req,resp);
    }

    protected void listOrdersById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取Userid
        User loginUser = (User) req.getSession().getAttribute("user");
        //1 通过BookService查询全部图书
        List<Order> orders = orderService.querOrdersByUser_id(loginUser.getId());
        //2 把全部图书保存到Request域中
        req.setAttribute("orders", orders);
        //3、请求转发到/pages/manager/book_manager.jsp页面
        req.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(req,resp);
    }
}
