package com.xing.dao;/*
 * @author Xingqilin
 *
 */

import org.apache.ibatis.annotations.Select;

import java.awt.print.Book;
import java.util.List;

public interface BookListDao {

    @Select("select * from booklist")
    List<Book> allBooks();


}
