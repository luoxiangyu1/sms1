package com.lxy.service;

import com.lxy.pojo.Course;

import java.util.List;

public interface CourseService {
    //增加课程
    int addCourse(Course course);

    //删除课程
    int deleteCourseById(int id);

    //更新课程
    int updateCourse(Course course);

    //上传课程图片
    int updateCoursePic(Course course);

    //查询课程
    Course queryCouseById(int id);

    //查询全部课程
    List<Course> queryAllCourse();

    List<Course> queryCourseByName(String courseName);

    //查询前三个课程
    List<Course> courseShow();

    //根据学院编号查课程
    List<Course> queryCourseByCollege(int collegeId);

    //根据课程类别查询课程
    List<Course> queryCourseByCourseType(String courseType);
}
