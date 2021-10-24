package com.lxy.service;

import com.lxy.pojo.Major;

import java.util.List;

public interface MajorService {

    //添加专业
    int addMajor(Major major);
    //删除专业
    int deleteMajorById(int id);
    //更新专业信息
    int updateMajor(Major major);
    //查询专业
    Major queryMajorById(int id);
    //查询所有专业
    List<Major> queryAllMajor();
    //根据专业名称查询专业
    Major queryMajorByName(String majorName);

}
