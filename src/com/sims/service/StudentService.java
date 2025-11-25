package com.sims.service;

import com.sims.dao.StudentDao;
import com.sims.entity.Student;

import java.util.List;
import java.util.Map;

public class StudentService {
    private StudentDao studentDao = new StudentDao();

    public List getStudents() {
        return studentDao.getStudents();
    }

    public boolean addStudent(Student student) {
        int rows = studentDao.addStudent(student);
        if (rows > 0) {
            return true;
        } else {
            return false;
        }
    }

    public Student getStudentById(Integer id) {
        List<Map> studuents = studentDao.getStudentById(id);
        Map studentMap = studuents.get(0);
        Student student = new Student();
        student.setId((Integer) studentMap.get("id"));
        student.setName(studentMap.get("name").toString());
        student.setAge((Integer) studentMap.get("age"));
        student.setSex(studentMap.get("sex").toString());
        return  student;
    }
    //删除学生信息的服务方法
    public boolean deleteStudent(Integer id) {
        int rows = studentDao.deleteStudentById(id);
        return rows > 0;
    }
    //编辑学生信息的服务方法
    public boolean updateStudent(Student student) {
        int rows = studentDao.updateStudent(student);
        return rows > 0;
    }
}
