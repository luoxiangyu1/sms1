package com.lxy.dao;

import com.lxy.pojo.Score;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ScoreMapper {

    //增加成绩
    int addScore(Score score);

    //删除成绩
    int deleteScoreById(@Param("scoreId") int id);

    //更新成绩
    int updateScore(Score score);

    //查询课程
    Score queryScoreById(@Param("scoreId") int id);

    //查询全部课程
    List<Score> queryAllScore();

    //根据学号查成绩
    Score queryScoreByStuId(@Param("stuId") int stuId);

    //根据课程编号查成绩
    Score queryScoreByCourseId(@Param("courseId")int courseId);

}
