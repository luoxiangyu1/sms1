package com.lxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Major {

    //专业编号
    private int majorId;
    //专业名称
    private String majorName;
    //学院编号
    private int collegeId;

}
