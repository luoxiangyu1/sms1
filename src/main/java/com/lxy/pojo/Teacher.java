package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {

    //教师编号
    private int teacherId;
    //教师姓名
    private String teacherName;
    //学院编号
    private int collegeId;
    //性别
    private String teacherGender;
    //年龄
    private int teacherAge;
    //办公室
    private String teacherRoom;
    //教师职称
    private String teacherTitle;
    //联系方式
    private String teacherPhone;
    //邮箱
    private String teacherEmail;
    //住址
    private String teacherAddress;
    //民族
    private String teacherNation;
    //政治面貌
    private String teacherStatus;
    //登陆密码
    private String teacherPwd;

}
