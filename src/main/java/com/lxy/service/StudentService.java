package com.lxy.service;

import com.lxy.pojo.Student;

import java.util.List;

public interface StudentService {

    //添加学生信息
    int addStudent(Student student);

    //删除学生信息
    int deleteStudentById(int id);

    //更新学生信息
    int updateStudent(Student student);

    //查询学生信息
    Student queryStudentById(int id);

    //查询所有学生
    List<Student> queryAllStudent();

    Student queryStudentByName(String stuName);

}
