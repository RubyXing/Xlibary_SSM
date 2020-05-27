package com.xing.service;/*
 * @author Xingqilin
 *
 */

import com.xing.pojo.User;

import java.util.List;

public interface UserServcie {

    User userLogin(String uaccount);

    int userRegister(User user);

    int userUpdate(User user);

    User findUser(int uid);

    List<User> listUser();
}
