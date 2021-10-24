package com.lxy.controller;

import com.lxy.pojo.Teacher;
import com.lxy.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    @Qualifier("TeacherServiceImpl")
    private TeacherService teacherService;

    //查询所有的教师并返回到教师展示页面
    @RequestMapping("/allTeacher")
    public String  List(Model model) {
        List<Teacher> list = teacherService.queryAllTeacher();
        model.addAttribute("list",list);

        return "allTeacher";
    }

    //跳转到增加教师页面
    @RequestMapping("/toAddTeacher")
    public String toAddPaper() {
        return "addTeacher";
    }

    //添加书籍的请求
    @RequestMapping("/addTeacher")
    public String addTeacher(Teacher teacher) {
        System.out.println("addTeacher=>" + teacher);
        teacherService.addTeacher(teacher);
        return "redirect:/teacher/allTeacher";
    }

    //跳转到修改页面
    @RequestMapping(value = "/toUpdate/{id}")
    public String toUpdatePaper(@PathVariable(value = "id") Integer id, Model model) {
        Teacher teacher = teacherService.queryTeacherById(id);
        model.addAttribute("qTeacher",teacher);
        return "updateTeacher";
    }

    //修改教师信息
    @RequestMapping("/updateTeacher")
    public String updateTeacher(Teacher teacher) {
        System.out.println("updateTeacher=>" + teacher);
        teacherService.updateTeacher(teacher);

        return "redirect:/teacher/allTeacher";
    }

    //删除教师
    @RequestMapping("/deleteTeacher/{id}")
    public String deleteTeacher(@PathVariable(value = "id") Integer id) {
        teacherService.deleteTeacherById(id);

        return "redirect:/teacher/allTeacher";
    }

    //根据名称查询教师
    @RequestMapping("/queryTeacher")
    public String queryTeacher(String queryTeacherName,Model model) {
        Teacher teacher = teacherService.queryTeacherByName(queryTeacherName);
        List<Teacher> list = new ArrayList<Teacher>();
        list.add(teacher);
        if (teacher==null) {
            model.addAttribute("error","未查到！");
        }
        model.addAttribute("list",list);
        return "allTeacher";
    }

}
