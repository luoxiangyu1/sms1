package com.lxy.service;

import com.lxy.dao.ScoreMapper;
import com.lxy.pojo.Score;

import java.util.List;

public class ScoreServiceImpl implements ScoreService {

    private ScoreMapper scoreMapper;

    public void setScoreMapper(ScoreMapper scoreMapper) {
        this.scoreMapper = scoreMapper;
    }

    @Override
    public int addScore(Score score) {
        return scoreMapper.addScore(score);
    }

    @Override
    public int deleteScoreById(int id) {
        return scoreMapper.deleteScoreById(id);
    }

    @Override
    public int updateScore(Score score) {
        return scoreMapper.updateScore(score);
    }

    @Override
    public Score queryScoreById(int id) {
        return scoreMapper.queryScoreById(id);
    }

    @Override
    public List<Score> queryAllScore() {
        return scoreMapper.queryAllScore();
    }

    @Override
    public Score queryScoreByStuId(int stuId) {
        return scoreMapper.queryScoreByStuId(stuId);
    }

    @Override
    public Score queryScoreByCourseId(int courseId) {
        return scoreMapper.queryScoreByCourseId(courseId);
    }
}
