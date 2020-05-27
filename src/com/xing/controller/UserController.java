package com.xing.controller;/*
 * @author Xingqilin
 *
 */

import com.xing.dao.UserDao;
import com.xing.pojo.User;
import com.xing.service.UserServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserServcie userServcie;

    //    登录模块
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String account, String pwd, HttpServletRequest req) {
        User user = userServcie.userLogin(account);

        if (user != null) {
            if (user.getUauthorty() == 0) {
                return "redirect:/Login.html";
            }
            if (user.getUpwd().equals(pwd)) {
                HttpSession session = req.getSession();
                session.setAttribute("id", user.getUid());
                session.setAttribute("name", user.getUname());
                session.setAttribute("authority", user.getUauthorty());
                return "redirect:/book/listBooks/1";
            }
        }
        return "redirect:/Login.html";
    }

    //    注册模块
    @RequestMapping("/register")
    public ModelAndView register(User user) {
        ModelAndView view = new ModelAndView("redirect:/BookList.jsp");
        System.out.println(user.toString());
//        int i = userServcie.userRegister(user);
        int i = 0;
        view.addObject("state", i == 1 ? "success" : "fails");
        return view;
    }

    //    信息修改模块
    @RequestMapping("/modify")
    public ModelAndView userModify(User user) {
        ModelAndView view = new ModelAndView();

        return view;
    }

    //    信息展示
    @RequestMapping("/details")
    public ModelAndView userDetails(int uid) {
        User user = userServcie.findUser(uid);
        ModelAndView view = new ModelAndView("/BookList.jsp");
        view.addObject("user", user);

        return view;
    }

}
