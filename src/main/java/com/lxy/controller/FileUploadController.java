package com.lxy.controller;



import com.lxy.pojo.Course;
import com.lxy.service.CourseService;
import com.lxy.service.FileService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Api(description="阿里云文件管理")
@Controller

public class FileUploadController {
    @Autowired
    private FileService fileService;

    @Autowired
    private CourseService courseService;

    //跳转到上传图片页面
    @RequestMapping("/toUploadPic/{id}")
    public String toUploadPic(@PathVariable("id")int id, Model model) {
        Course course = courseService.queryCouseById(id);
        model.addAttribute("course",course);

        return "uploadPic";
    }

    /**
     * 文件上传
     */
    @ApiOperation(value = "文件上传")
    @PostMapping("/uploadPic")
    public String upload(
            @ApiParam(name = "file", value = "文件", required = true)
            @RequestParam("file") MultipartFile file,Course course){
        String url = fileService.upload(file);
        course.setCoursePic(url);
        courseService.updateCoursePic(course);

        return "redirect:/course/allCourse";
    }

}
