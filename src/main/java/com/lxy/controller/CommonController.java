package com.lxy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxy.pojo.Course;
import com.lxy.pojo.vo.CourseVo;
import com.lxy.service.CollegeService;
import com.lxy.service.CourseService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CommonController {

    @Autowired
    @Qualifier("CourseServiceImpl")
    private CourseService courseService;

    @Autowired
    @Qualifier("CollegeServiceImpl")
    private CollegeService collegeService;


    //转到首页
    @RequestMapping("/form")
    public String goForm() {
        return "form";
    }

    @RequestMapping("/toCourseList")
    public String toCourseList() {
        return "courseList";
    }

    @RequestMapping("/courseList")
    public String courseList(@RequestParam(defaultValue="1") int page, Model model) {
        PageHelper.startPage(page,8);
        List<Course> list = courseService.queryAllCourse();
        PageInfo<Course> p = new PageInfo<>(list);
        System.out.println(list);
        model.addAttribute("list",list);
        model.addAttribute("page",p);

        return "courseList";
    }

    //前台课程展示
    @RequestMapping("/courseShow")
    public String courseShow(Model model) {
        List<Course> list = courseService.courseShow();
        System.out.println("aaa");
        model.addAttribute("list",list);
        return "form";
    }

    //前台查询课程
    @RequestMapping("/searchCourse")
    public String searchCourse(String searchCourseName,Model model) {
        List<Course> list = courseService.queryCourseByName(searchCourseName);
        if (list==null) {
            model.addAttribute("error","未查到！");
        }
        model.addAttribute("list",list);
        return "courseList";
    }

    //前台课程详情展示
    @RequestMapping("/moreDetail/{id}")
    public String moreDetail(@PathVariable(value = "id")int id,Model model) {
        Course course = courseService.queryCouseById(id);
        CourseVo courseVo = new CourseVo();
        BeanUtils.copyProperties(course,courseVo);
        courseVo.setCollegeName(collegeService.queryCollegeById(course.getCollegeId()).getCollegeName());
        model.addAttribute("course",courseVo);

        return "moreDetail";
    }

    //退出后台系统
    @RequestMapping("/exit")
    public String exit() {
        return "adminLogin";
    }

}
