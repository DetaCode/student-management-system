package com.sims.servlet;

import com.sims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class StudentsServlet extends HttpServlet {
    private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取学生信息
        List studentList = studentService.getStudents();

        // 放在请求域中
        req.setAttribute("studentList", studentList);

        req.getRequestDispatcher("students.jsp").forward(req, resp);
    }
}
