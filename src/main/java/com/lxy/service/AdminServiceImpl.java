package com.lxy.service;

import com.lxy.dao.AdminMapper;
import com.lxy.pojo.Admin;

import java.util.List;

public class AdminServiceImpl implements AdminService{

    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public int addAdmin(Admin admin) {
        return 0;
    }

    @Override
    public int deleteAdminById(int id) {
        return 0;
    }

    @Override
    public int updateAdmin(Admin admin) {
        return 0;
    }

    @Override
    public Admin queryAdminById(int id) {
        return null;
    }

    @Override
    public List<Admin> queryAllAdmin() {
        return null;
    }

    @Override
    public Admin queryAdminByName(String adminName) {
        return null;
    }
}
