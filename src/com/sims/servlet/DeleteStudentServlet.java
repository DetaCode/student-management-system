package com.sims.servlet;

import com.sims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteStudentServlet extends HttpServlet {

    private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        boolean result = studentService.deleteStudent(id);

        if (result) {
            resp.sendRedirect("students.do");
        } else {
            req.setAttribute("msg", "删除学生信息失败！");
            req.getRequestDispatcher("students.jsp").forward(req, resp);
        }
    }
}
