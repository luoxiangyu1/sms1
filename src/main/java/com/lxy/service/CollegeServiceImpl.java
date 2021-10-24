package com.lxy.service;

import com.lxy.dao.CollegeMapper;
import com.lxy.pojo.College;

import java.util.List;

public class CollegeServiceImpl implements CollegeService {

    private CollegeMapper collegeMapper;

    public void setCollegeMapper(CollegeMapper collegeMapper) {
        this.collegeMapper = collegeMapper;
    }

    @Override
    public int addCollege(College college) {
        return collegeMapper.addCollege(college);
    }

    @Override
    public int deleteCollegeById(int id) {
        return collegeMapper.deleteCollegeById(id);
    }

    @Override
    public int updateCollege(College college) {
        return collegeMapper.updateCollege(college);
    }

    @Override
    public College queryCollegeById(int id) {
        return collegeMapper.queryCollegeById(id);
    }

    @Override
    public List<College> queryAllCollege() {
        return collegeMapper.queryAllCollege();
    }

    @Override
    public College queryCollegeByName(String collegeName) {
        return collegeMapper.queryCollegeByName(collegeName);
    }
}
