package com.sims.dao;

import com.sims.entity.Student;

import java.util.List;
import java.util.Map;

public class StudentDao extends BaseDao {
    public List getStudents() {
        String sql = "SELECT * from student";
        Object[] params = new Object[]{};
        return doSelect(sql, params);
    }

    public int addStudent(Student student) {
        String sql = "insert into student(name,age,sex) values(?,?,?)";
        Object[] params = new Object[]{student.getName(), student.getAge(), student.getSex()};
        return doCUD(sql, params);
    }

    public List<Map> getStudentById(Integer id) {
        String sql = "SELECT * from student where id=?";
        Object[] params = new Object[]{ id };
        return doSelect(sql, params);
    }
    //删除学生方法
    public int deleteStudentById(Integer id) {
        String sql = "DELETE from student where id=?";
        Object[] params = new Object[]{id};
        return doCUD(sql, params);
    }
    //修改学生信息方法
    public int updateStudent(Student student) {
        String sql = "UPDATE student SET name=?, age=?, sex=? WHERE id=?";
        Object[] params = new Object[]{student.getName(), student.getAge(), student.getSex(), student.getId()};
        return doCUD(sql, params);
    }
}
