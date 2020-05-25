package com.xing.controller;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.UserDao;
import com.xing.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserDao userDao;

    //    登录模块
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(String account, String pwd, HttpServletRequest req) {
        User user = userDao.userLogin(account);
        ModelAndView view = new ModelAndView("redirect:/Login.html");
        String resultMes = "无效用户";
        if (user != null) {
            if (user.getUauthorty() == 0) {
                resultMes = "账号已失效，请联系管理员";
            }
            if (user.getUpwd().equals(pwd)) {
                HttpSession session = req.getSession();
                session.setAttribute("name", user.getUname());
                session.setAttribute("authority", user.getUauthorty());
                view.setViewName("/BookList.jsp");
                resultMes = "登录成功";
            } else {
                resultMes = "账号或密码错误，请重试！";
            }
        }
        view.addObject("state", resultMes);
        return view;
    }

    //    注册模块
    @RequestMapping("/register")
    public ModelAndView register(User user) {
        ModelAndView view = new ModelAndView("/BookList.jsp");
        System.out.println(user.toString());
//        int i = userDao.userRegister(user);
        int i = 0;
        view.addObject("state", i == 1 ? "success" : "fails");
        return view;
    }

//    信息修改模块


}
