package com.sims.servlet;

import com.sims.entity.Student;
import com.sims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetStudentsServlet extends HttpServlet {

    private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Student> students = studentService.getStudents();
        request.setAttribute("students", students);
        request.getRequestDispatcher("students.jsp").forward(request, response);
    }
}
