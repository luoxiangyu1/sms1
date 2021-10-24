package com.lxy.service;

import com.lxy.pojo.College;

import java.util.List;

public interface CollegeService {
    //添加学院
    int addCollege(College college);
    //删除学院
    int deleteCollegeById(int id);
    //更新学院信息
    int updateCollege(College college);
    //查询学院
    College queryCollegeById(int id);
    //查询所有学院
    List<College> queryAllCollege();
    //根据学院名称查询学院
    College queryCollegeByName(String collegeName);
}
