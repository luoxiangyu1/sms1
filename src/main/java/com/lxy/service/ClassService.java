package com.lxy.service;

import com.lxy.pojo.Class;

import java.util.List;

public interface ClassService {

    //添加班级
    int addClass(Class clazz);
    //删除班级
    int deleteClassById(int id);
    //更新班级信息
    int updateClass(Class clazz);
    //查询班级
    Class queryClassById(int id);
    //查询所有班级
    List<Class> queryAllClass();
    //根据班级名称查询班级
    Class queryClassByName(String className);

}
