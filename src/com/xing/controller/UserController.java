package com.xing.controller;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.UserDao;
import com.xing.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        String resultMes = "无效用户";
        if (user != null) {
            if (user.getUauthorty() == 0) {
                resultMes = "账号已失效，请联系管理员";
            }
            if (user.getUpwd().equals(pwd)) {
                HttpSession session = req.getSession();
                session.setAttribute("name", user.getUname());
                session.setAttribute("authority", user.getUauthorty());
                resultMes = "register:";
            } else {
                resultMes = "账号或密码错误，请重试！";
            }
        }
        return resultMes;
    }

    @ResponseBody
    @RequestMapping("/register")
    public String register(User user) {
        System.out.println(user.toString());
        int i = userDao.userRegister(user);

        return i == 1 ? "success" : "fails";
    }


}
