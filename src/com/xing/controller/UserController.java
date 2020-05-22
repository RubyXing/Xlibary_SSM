package com.xing.controller;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.UserDao;
import com.xing.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserDao userDao;

    @RequestMapping("/login")
    public String login(String account, String pwd, HttpServletRequest req){
        User user = userDao.userLogin(account);
        if (user != null) {
            if (user.getUpwd().equals(pwd)){
                HttpSession session = req.getSession();
                session.setAttribute("name",user.getUname());
                session.setAttribute("authority",user.getUauthorty());
                return "success";
            }
        }
        return "/index.jsp";

    }
}
