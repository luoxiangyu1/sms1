package com.lxy.service;

import com.lxy.dao.MajorMapper;
import com.lxy.pojo.Major;

import java.util.List;

public class MajorServiceImpl implements MajorService{

    private MajorMapper majorMapper;

    public void setMajorMapper(MajorMapper majorMapper) {
        this.majorMapper = majorMapper;
    }

    @Override
    public int addMajor(Major major) {
        return majorMapper.addMajor(major);
    }

    @Override
    public int deleteMajorById(int id) {
        return majorMapper.deleteMajorById(id);
    }

    @Override
    public int updateMajor(Major major) {
        return majorMapper.updateMajor(major);
    }

    @Override
    public Major queryMajorById(int id) {
        return majorMapper.queryMajorById(id);
    }

    @Override
    public List<Major> queryAllMajor() {
        return majorMapper.queryAllMajor();
    }

    @Override
    public Major queryMajorByName(String majorName) {
        return majorMapper.queryMajorByName(majorName);
    }
}
