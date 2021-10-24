package com.lxy.service;

import com.lxy.dao.ClassMapper;
import com.lxy.pojo.Class;

import java.util.List;

public class ClassServiceImpl implements ClassService{

    private ClassMapper classMapper;

    public void setClassMapper(ClassMapper classMapper) {
        this.classMapper = classMapper;
    }

    @Override
    public int addClass(Class clazz) {
        return classMapper.addClass(clazz);
    }

    @Override
    public int deleteClassById(int id) {
        return classMapper.deleteClassById(id);
    }

    @Override
    public int updateClass(Class clazz) {
        return classMapper.updateClass(clazz);
    }

    @Override
    public Class queryClassById(int id) {
        return classMapper.queryClassById(id);
    }

    @Override
    public List<Class> queryAllClass() {
        return classMapper.queryAllClass();
    }

    @Override
    public Class queryClassByName(String className) {
        return classMapper.queryClassByName(className);
    }
}
