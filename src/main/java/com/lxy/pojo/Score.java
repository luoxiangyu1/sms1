package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Score {

    //成绩编号
    private int scoreId;
    //学号
    private int stuId;
    //课程编号
    private int courseId;
    //平时成绩
    private double scoreUsual;
    //成绩比例
    private double scoreRatio;
    //期末成绩
    private double scoreExam;
    //总成绩
    private double scoreTotal;

}
