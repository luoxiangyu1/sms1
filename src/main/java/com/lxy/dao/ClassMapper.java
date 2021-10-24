package com.lxy.dao;

import com.lxy.pojo.Class;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassMapper {

    //添加班级
    int addClass(Class clazz);
    //删除班级
    int deleteClassById(@Param("classId")int id);
    //更新班级信息
    int updateClass(Class clazz);
    //查询班级
    Class queryClassById(@Param("classId")int id);
    //查询所有班级
    List<Class> queryAllClass();
    //根据班级名称查询班级
    Class queryClassByName(@Param("className")String className);

}
