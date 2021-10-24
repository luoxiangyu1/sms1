package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {

    //管理员编号
    private int adminId;
    //管理员名称
    private String adminName;
    //管理员办公室
    private String adminRoom;
    //联系方式
    private String adminPhone;
    //邮箱
    private String adminEmail;
    //民族
    private String adminNation;
    //政治面貌
    private String adminStatus;
    //登陆密码
    private String adminPwd;

}
