package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course {
    //课程编号
    private int courseId;
    //教师编号
    private int teacherId;
    //学院编号
    private int collegeId;
    //课程名称
    private String courseName;
    //学分
    private double courseCredit;
    //学时
    private int coursePeriod;
    //上课教室
    private String courseRoom;
    //开课时间
    private String courseBegin;
    //上课时间
    private String courseTime;
    //班级编号
    private int classId;
    //建议修读学期
    private int courseYear;
    //课程图片
    private String coursePic;
    //课程介绍
    private String courseIntro;
    //课程类型
    private String courseType;

}
