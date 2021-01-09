package com.my.test;

import com.my.dao.BookDao;
import com.my.dao.impl.BaseDao;
import com.my.dao.impl.BookDaoImpl;
import com.my.pojo.Book;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;

public class BookDaoTest {

    private BookDao bookDao=new BookDaoImpl();

    @Test
    public void addBook(){
        bookDao.addBook(new Book(null,"镜花缘","李汝珍",new BigDecimal(250),123,456,"static/img/default.jpg"));
    }

    @Test
    public void updateBook(){
        bookDao.updateBook(new Book(45,"镜花缘","李汝珍",new BigDecimal(361),123,456,"static/img/default.jpg"));
    }

    @Test
    public void queryBookById(){
        System.out.println(bookDao.queryBookById(45));
    }

    @Test
    public void queryBooks(){
        for(Book queryBook :bookDao.queryBooks()){
            System.out.println(queryBook);
        }
    }

    @Test
    public void ueryForPageTotalCount(){
        System.out.println(bookDao.queryForPageTotalCount());
    }

    @Test
    public void queryForPageItems(){
        for(Book queryBook: bookDao.queryForPageItems(0, 10)){
            System.out.println(queryBook);
        }
    }


}
