package com.lxy.service;

import com.lxy.dao.TeacherMapper;
import com.lxy.pojo.Teacher;

import java.util.List;

public class TeacherServiceImpl implements TeacherService{

    private TeacherMapper teacherMapper;

    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public int addTeacher(Teacher teacher) {
        return teacherMapper.addTeacher(teacher);
    }

    @Override
    public int deleteTeacherById(int id) {
        return teacherMapper.deleteTeacherById(id);
    }

    @Override
    public int updateTeacher(Teacher teacher) {
        return teacherMapper.updateTeacher(teacher);
    }

    @Override
    public Teacher queryTeacherById(int id) {
        return teacherMapper.queryTeacherById(id);
    }

    @Override
    public List<Teacher> queryAllTeacher() {
        return teacherMapper.queryAllTeacher();
    }

    @Override
    public Teacher queryTeacherByName(String teacherName) {
        return teacherMapper.queryTeacherByName(teacherName);
    }
}
