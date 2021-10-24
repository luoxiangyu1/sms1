package com.lxy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxy.pojo.College;
import com.lxy.pojo.Course;
import com.lxy.pojo.Type;
import com.lxy.pojo.vo.CourseVo;
import com.lxy.service.CollegeService;
import com.lxy.service.CourseService;
import com.lxy.service.TypeService;
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
@RequestMapping("/course")
public class CourseController {

    @Autowired
    @Qualifier("CourseServiceImpl")
    private CourseService courseService;

    @Autowired
    @Qualifier("CollegeServiceImpl")
    private CollegeService collegeService;

    @Autowired
    @Qualifier("TypeServiceImpl")
    private TypeService typeService;

    //查询所有的课程并返回到课程展示页面
    @RequestMapping("/allCourse")
    public String  List(@RequestParam(defaultValue="1") int page, Model model) {
        PageHelper.startPage(page,6);
        List<Course> list = courseService.queryAllCourse();
        PageInfo<Course> p = new PageInfo<Course>(list);
        model.addAttribute("list",list);
        model.addAttribute("page",p);

        return "allCourse";
    }

    //跳转到增加课程页面
    @RequestMapping("/toAddCourse")
    public String toAddPaper(Model model) {
        List<College> list = collegeService.queryAllCollege();
        List<Type> list1 = typeService.queryAllType();
        model.addAttribute("list",list);
        model.addAttribute("list1",list1);

        return "addCourse";
    }

    //添加课程的请求
    @RequestMapping("/addCourse")
    public String addCourse(Course course){
        System.out.println("addCourse=>" + course);
        courseService.addCourse(course);
        return "redirect:/course/allCourse";
    }

    //跳转到修改页面
    @RequestMapping(value = "/toUpdate/{id}")
    public String toUpdatePaper(@PathVariable(value = "id") Integer id, Model model) {
        Course course = courseService.queryCouseById(id);
        List<College> list = collegeService.queryAllCollege();
        List<Type> list1 = typeService.queryAllType();
        model.addAttribute("qCourse",course);
        model.addAttribute("list",list);
        model.addAttribute("list1",list1);
        return "updateCourse";
    }

    //修改课程
    @RequestMapping("/updateCourse")
    public String updateCourse(Course course) {
        System.out.println("updateCourse=>" + course);
        courseService.updateCourse(course);

        return "redirect:/course/allCourse";
    }

    //删除课程
    @RequestMapping("/deleteCourse/{id}")
    public String deleteCourse(@PathVariable(value = "id") Integer id) {
        courseService.deleteCourseById(id);

        return "redirect:/course/allCourse";
    }

    //根据名称查询课程
    @RequestMapping("/queryCourse")
    public String queryCourse(String queryCourseName,Model model) {
        List<Course> list = courseService.queryCourseByName(queryCourseName);
        if (list==null) {
            model.addAttribute("error","未查到！");
        }
        model.addAttribute("list",list);
        return "allCourse";
    }

    //转跳到详细信息页面
    @RequestMapping("/toDetail/{id}")
    public String courseDetail(@PathVariable(value = "id")int id,Model model) {
        Course course = courseService.queryCouseById(id);
        CourseVo courseVo = new CourseVo();
        BeanUtils.copyProperties(course,courseVo);
        System.out.println(courseVo);
        courseVo.setCollegeName(collegeService.queryCollegeById(course.getCollegeId()).getCollegeName());
        model.addAttribute("course",courseVo);
        return "courseDetail";
    }

}
