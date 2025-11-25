package com.sims.servlet;

import com.sims.entity.Student;
import com.sims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddStudentServlet extends HttpServlet {

    private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");
        Integer age = Integer.parseInt(req.getParameter("age"));
        String sex = req.getParameter("sex");

        Student student = new Student();
        student.setName(name);
        student.setAge(age);
        student.setSex(sex);

        boolean result = studentService.addStudent(student);

        resp.sendRedirect("students.do");
    }
}
