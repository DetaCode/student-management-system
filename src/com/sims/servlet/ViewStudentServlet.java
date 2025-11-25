package com.sims.servlet;

import com.sims.entity.Student;
import com.sims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ViewStudentServlet extends HttpServlet {

   private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));

        Student student = studentService.getStudentById(id);

        req.setAttribute("student", student);

        req.getRequestDispatcher("viewStudent.jsp").forward(req, resp);
    }
}
