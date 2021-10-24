package com.lxy.controller;

import com.lxy.pojo.College;
import com.lxy.service.CollegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CollegeController {

    @Autowired
    @Qualifier("CollegeServiceImpl")
    private CollegeService collegeService;

//    //查询所有课程
//    @RequestMapping("/allCollege")
//    public String allCollege(Model model) {
//        List<College> list = collegeService.queryAllCollege();
//        model.addAttribute("list",list);
//
//        return "addCourse";
//    }

}
