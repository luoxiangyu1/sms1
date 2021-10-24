package com.lxy.service;

import com.lxy.pojo.Teacher;

import java.util.List;

public interface TeacherService {
    //添加教师信息
    int addTeacher(Teacher teacher);

    //删除教师信息
    int deleteTeacherById(int id);

    //更新教师信息
    int updateTeacher(Teacher teacher);

    //查询教师信息
    Teacher queryTeacherById(int id);

    //查询所有教师
    List<Teacher> queryAllTeacher();

    //根据姓名查询教师
    Teacher queryTeacherByName(String teacherName);
}
