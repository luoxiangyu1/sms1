package com.lxy.controller;

import com.lxy.pojo.Student;
import com.lxy.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    @Qualifier("StudentServiceImpl")
    private StudentService studentService;

    //查询所有的学生并返回到学生展示页面
    @RequestMapping("/allStudent")
    public String  List(Model model) {
        List<Student> list = studentService.queryAllStudent();
        model.addAttribute("list",list);

        return "allStudent";
    }

    //跳转到增加学生页面
    @RequestMapping("/toAddStudent")
    public String toAddPaper() {
        return "addStudent";
    }

    //添加书籍的请求
    @RequestMapping("/addStudent")
    public String addStudent(Student student) {
        System.out.println("addStudent=>" + student);
        studentService.addStudent(student);
        return "redirect:/student/allStudent";
    }

    //跳转到修改页面
    @RequestMapping(value = "/toUpdate/{id}")
    public String toUpdatePaper(@PathVariable(value = "id") Integer id, Model model) {
        Student student = studentService.queryStudentById(id);
        model.addAttribute("qStudent",student);
        return "updateStudent";
    }

    //修改学生信息
    @RequestMapping("/updateStudent")
    public String updateStudent(Student student) {
        System.out.println("updateStudent=>" + student);
        studentService.updateStudent(student);

        return "redirect:/student/allStudent";
    }

    //删除学生
    @RequestMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable(value = "id") Integer id) {
        studentService.deleteStudentById(id);

        return "redirect:/student/allStudent";
    }

    //根据名称查询学生
    @RequestMapping("/queryStudent")
    public String queryStudent(String queryStudentName,Model model) {
        Student student = studentService.queryStudentByName(queryStudentName);
        List<Student> list = new ArrayList<Student>();
        list.add(student);
        if (student==null) {
            model.addAttribute("error","未查到！");
        }
        model.addAttribute("list",list);
        return "allStudent";
    }

}
