package com.xing.dao;/*
 * @author Xingqilin
 *
 */

import com.xing.pojo.Booklist;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.awt.print.Book;
import java.util.List;

public interface BookListDao {

    @Select("select * from booklist;")
    List<Booklist> allBooks();

    @Select("select * from booklist limit #{0} , #{1};")
    List<Booklist> listBooks(int offset, int pageSize);

    @Select("select * from booklist where bid = #{bid};")
    Booklist selectBook(int bid);

    @Update("update booklist set ")
    int updateBook(Booklist book);

    @Delete("delete booklist where bid = #{bid};")
    int deleteBook(int bid);

    @Insert("")
    int insertBook(Booklist book);
}
