package com.xing.filter;/*
 * @author Xingqilin
 *
 */

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        System.out.println("=========================================");
        System.out.println("拦截到的请求为" + req.getRequestURI());


        if (req.getSession().getAttribute("name") == null || req.getSession().getAttribute("name") == "") {

        } else {
            // session中的内容等于登录页面, 则可以继续访问其他区资源.
            chain.doFilter(req, resp);
        }
    }

}
