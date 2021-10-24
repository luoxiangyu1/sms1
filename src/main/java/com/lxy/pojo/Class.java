package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Class {

    //班级编号
    private int classId;
    //学院编号
    private int collegeId;
    //专业编号
    private int majorId;
    //班级名称
    private String className;
    //班主任编号
    private int teacherId;
    //年级
    private int classGrade;

}
