package com.lxy.service;

import com.lxy.pojo.Admin;

import java.util.List;

public interface AdminService {

    //添加管理员
    int addAdmin(Admin admin);
    //删除管理员信息
    int deleteAdminById(int id);
    //更新管理员信息
    int updateAdmin(Admin admin);
    //查询管理员信息
    Admin queryAdminById(int id);
    //查询所有管理员
    List<Admin> queryAllAdmin();
    //根据姓名查管理员
    Admin queryAdminByName(String adminName);

}
