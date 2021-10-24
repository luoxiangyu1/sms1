package com.lxy.service;

import com.lxy.dao.CourseMapper;
import com.lxy.pojo.Course;

import java.util.List;

public class CourseServiceImpl implements CourseService{

    private CourseMapper courseMapper;

    public void setCourseMapper(CourseMapper courseMapper) {
        this.courseMapper = courseMapper;
    }

    @Override
    public int addCourse(Course course) {
        return courseMapper.addCourse(course);
    }

    @Override
    public int deleteCourseById(int id) {
        return courseMapper.deleteCourseById(id);
    }

    @Override
    public int updateCourse(Course course) {
        return courseMapper.updateCourse(course);
    }

    @Override
    public int updateCoursePic(Course course) {
        return courseMapper.updateCoursePic(course);
    }

    @Override
    public Course queryCouseById(int id) {
        return courseMapper.queryCouseById(id);
    }

    @Override
    public List<Course> queryAllCourse() {
        return courseMapper.queryAllCourse();
    }

    @Override
    public List<Course> queryCourseByName(String courseName) {
        return courseMapper.queryCourseByName(courseName);
    }

    @Override
    public List<Course> courseShow() {
        return courseMapper.courseShow();
    }

    @Override
    public List<Course> queryCourseByCollege(int collegeId) {
        return courseMapper.queryCourseByCollege(collegeId);
    }

    @Override
    public List<Course> queryCourseByCourseType(String courseType) {
        return courseMapper.queryCourseByCourseType(courseType);
    }
}
