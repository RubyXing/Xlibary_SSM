package com.xing.dao;/*
 * @author Xingqilin
 *
 */

import com.xing.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserDao {

    @Select("select * from user where uaccount = #{account};")
    User userLogin(String account);

    @Insert("insert into user (uaccount,uname,upwd,uauthorty) values(#{uaccount},#{uname},#{upwd},#{uauthorty})")
    int userRegister(User user);

    @Update("update user set uaccount = #{uaccount},uname = #{uname},upwd = #{upwd},uauthorty = #{uauthorty} where uid = #{uid}")
    int userUpdate(User user);

    @Select("select * from user where uid = #{uid};")
    User findUser(int uid);

    @Select("select * from user")
    List<User> listUser();
}
