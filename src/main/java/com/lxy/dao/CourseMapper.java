package com.lxy.dao;

import com.lxy.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper {
    //增加课程
    int addCourse(Course course);


    //删除课程
    int deleteCourseById(@Param("courseId") int id);

    //更新课程基本信息
    int updateCourse(Course course);

    //上传课程图片
    int updateCoursePic(Course course);

    //查询课程
    Course queryCouseById(@Param("courseId") int id);

    //查询全部课程
    List<Course> queryAllCourse();

    List<Course> queryCourseByName(@Param("courseName") String courseName);

    //查询前三个课程
    List<Course> courseShow();

    //根据学院编号查课程
    List<Course> queryCourseByCollege(@Param("collegeId")int collegeId);

    //根据课程类别查询课程
    List<Course> queryCourseByCourseType(@Param("courseType") String courseType);

}
