package com.sims.servlet;

import com.sims.entity.Student;
import com.sims.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditStudentServlet extends HttpServlet {

    private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        Integer age = Integer.parseInt(req.getParameter("age"));
        String sex = req.getParameter("sex");

        Student student = new Student();
        student.setId(id);
        student.setName(name);
        student.setAge(age);
        student.setSex(sex);

        boolean result = studentService.updateStudent(student);

        if (result) {
            resp.sendRedirect("students.do");
        } else {
            req.setAttribute("msg", "编辑学生信息失败！");
            req.getRequestDispatcher("editStudent.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Student student = studentService.getStudentById(id);
        request.setAttribute("student", student);
        request.getRequestDispatcher("editStudent.jsp").forward(request, response);
    }
}
