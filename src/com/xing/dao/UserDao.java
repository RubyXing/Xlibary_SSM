package com.xing.dao;/*
 * @author Xingqilin
 *
 */

import com.xing.pojo.User;
import org.apache.ibatis.annotations.Select;

public interface UserDao {

    @Select("select * from user where uaccount = #{account};")
    User userLogin(String account);


}
