package com.my.test;

import com.my.pojo.Book;
import com.my.service.BookService;
import com.my.service.impl.BookServiceImpl;
import org.junit.Test;

public class BookServiceTest {
    BookService bookService=new BookServiceImpl();

    @Test
    public void page(){
        System.out.println(bookService.page(1, 3));
    }
}
