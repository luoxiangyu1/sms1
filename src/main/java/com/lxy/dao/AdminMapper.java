package com.lxy.dao;

import com.lxy.pojo.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {

    //添加管理员
    int addAdmin(Admin admin);
    //删除管理员信息
    int deleteAdminById(@Param("adminId")int id);
    //更新管理员信息
    int updateAdmin(Admin admin);
    //查询管理员信息
    Admin queryAdminById(@Param("adminId")int id);
    //查询所有管理员
    List<Admin> queryAllAdmin();
    //根据姓名查管理员
    Admin queryAdminByName(@Param("adminName")String adminName);

}
