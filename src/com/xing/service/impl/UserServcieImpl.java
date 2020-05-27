package com.xing.service.impl;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.UserDao;
import com.xing.pojo.User;
import com.xing.service.UserServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServcieImpl implements UserServcie {

    @Autowired
    UserDao userDao;

    @Override
    public User userLogin(String uaccount) {
        return userDao.userLogin(uaccount);
    }

    @Override
    public int userRegister(User user) {
        return userDao.userRegister(user);
    }

    @Override
    public int userUpdate(User user) {
        return userDao.userUpdate(user);
    }

    @Override
    public User findUser(int uid) {
        return userDao.findUser(uid);
    }

    @Override
    public List<User> listUser() {
        return userDao.listUser();
    }
}
