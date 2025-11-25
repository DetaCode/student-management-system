package com.sims.servlet;

import com.sims.entity.User;
import com.sims.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    private UserService userService = null;

    @Override
    public void init() throws ServletException {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = new User(username, password);
        boolean result = userService.login(user);

        if (result) {
            req.getSession().setAttribute("uid", user.getId());
            req.getSession().setAttribute("username", user.getUsername());
            resp.sendRedirect("students.do");
        } else {
            req.setAttribute("msg", "用户名或密码不正确！");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
