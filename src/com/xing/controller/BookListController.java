package com.xing.controller;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.BookListDao;
import com.xing.pojo.Booklist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BookListController {

    @Autowired
    BookListDao bookDao;

    //    分页展示图书
    @RequestMapping("/book/listBooks")
    public ModelAndView listBooks(int currentPage) {
        ModelAndView view = new ModelAndView("/BookList.jsp");
        int offset = (currentPage - 1) * 20;
        List<Booklist> books = bookDao.listBooks(offset, 20);
        System.out.println("/book/listBook-booksize" + books.size());
        view.addObject(books);
        return view;
    }

    @RequestMapping("/book/findBook")
    public Booklist showBook(int bookId) {
        Booklist book = bookDao.selectBook(bookId);
        return book;
    }

}
