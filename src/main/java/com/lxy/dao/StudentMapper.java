package com.lxy.dao;

import com.lxy.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {

    //添加学生信息
    int addStudent(Student student);

    //删除学生信息
    int deleteStudentById(@Param("stuId")int id);

    //更新学生信息
    int updateStudent(Student student);

    //查询学生信息
    Student queryStudentById(@Param("stuId")int id);

    //查询所有学生
    List<Student> queryAllStudent();

    Student queryStudentByName(@Param("stuName") String stuName);
}
