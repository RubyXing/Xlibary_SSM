package com.xing.controller;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.BookListDao;
import com.xing.pojo.Booklist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLOutput;
import java.util.List;

@RequestMapping("/book")
@Controller
public class BookListController {

    @Autowired
    BookListDao bookDao;

    //    分页展示图书
    @RequestMapping(value = "/listBooks/{page}", method = RequestMethod.POST)
    public ModelAndView listBooks(@PathVariable(name = "page") int currentPage) {
        ModelAndView view = new ModelAndView("/BookList.jsp");
        int offset = (currentPage - 1) * 20;
        List<Booklist> books = bookDao.listBooks(offset, 20);
        books.forEach(System.out::print);
        view.addObject("books", books);

        return view;
    }

    //    单本详情展示
    @RequestMapping(value = "/findBook/{bid}", method = RequestMethod.GET)
    public Booklist showBook(@PathVariable(name = "bid") int bookId) {
        Booklist book = bookDao.selectBook(bookId);
        return book;
    }


//    book查询
//    修改图书
//    删除图书
//    新增图书

}
