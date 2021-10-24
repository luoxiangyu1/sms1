package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    //学号
    private int stuId;
    //姓名
    private String stuName;
    //性别
    private String stuGender;
    //年龄
    private int stuAge;
    //学院编号
    private int collegeId;
    //专业编号
    private int majorId;
    //班级编号
    private int classId;
    //联系方式
    private String stuPhone;
    //邮箱
    private String stuEmail;
    //住址
    private String stuAddress;
    //民族
    private String stuNation;
    //政治面貌
    private String stuStatus;
    //登陆密码
    private String stuPwd;
}
