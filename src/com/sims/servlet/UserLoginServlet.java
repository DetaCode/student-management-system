package com.sims.servlet;

import com.sims.entity.User;
import com.sims.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserLoginServlet extends HttpServlet {

    private UserService userService;

    @Override
    public void init() throws ServletException {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取请求信息
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //将请求信息进行封装为user对象
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        //调用业务逻辑对象完成登录
        boolean result = userService.login(user);

        //根据结果作页面跳转
        if (result) {
            user.setPassword("");
            request.getSession().setAttribute("currentUser", user);
            response.sendRedirect("students.do");
        } else {
            request.setAttribute("msg", "用户名或密码错误！");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
