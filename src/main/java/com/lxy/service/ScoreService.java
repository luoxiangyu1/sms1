package com.lxy.service;

import com.lxy.pojo.Score;

import java.util.List;

public interface ScoreService {

    //增加成绩
    int addScore(Score score);

    //删除成绩
    int deleteScoreById(int id);

    //更新成绩
    int updateScore(Score score);

    //查询课程
    Score queryScoreById(int id);

    //查询全部课程
    List<Score> queryAllScore();

    //根据学号查成绩
    Score queryScoreByStuId(int stuId);

    //根据课程编号查成绩
    Score queryScoreByCourseId(int courseId);

}
