package com.xing.test;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.BookListDao;
import com.xing.pojo.Booklist;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.awt.print.Book;
import java.util.Arrays;
import java.util.List;

public class Mytest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
        SqlSessionFactory factory = (SqlSessionFactory) context.getBean("factory");
        SqlSession session = factory.openSession();
        BookListDao mapper = session.getMapper(BookListDao.class);
//        List<Booklist> books = mapper.listBooks(0, 20);
//        List<Booklist> books1 = mapper.allBooks();
        Booklist book = mapper.selectBook(1);
//        System.out.println(Arrays.toString(books.toArray()));
        System.out.println(book);
    }
}
