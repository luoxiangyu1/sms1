package com.lxy.dao;

import com.lxy.pojo.College;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CollegeMapper {

    //添加学院
    int addCollege(College college);
    //删除学院
    int deleteCollegeById(@Param("collegeId")int id);
    //更新学院信息
    int updateCollege(College college);
    //查询学院
    College queryCollegeById(@Param("collegeId")int id);
    //查询所有学院
    List<College> queryAllCollege();
    //根据学院名称查询学院
    College queryCollegeByName(@Param("collegeName")String collegeName);

}
