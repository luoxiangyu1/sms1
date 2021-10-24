package com.lxy.controller;

import com.lxy.pojo.Score;
import com.lxy.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/score")
public class ScoreController {

    @Autowired
    @Qualifier("ScoreServiceImpl")
    private ScoreService scoreService;

    //查询所有的成绩并返回到成绩展示页面
    @RequestMapping("/allScore")
    public String  List(Model model) {
        List<Score> list = scoreService.queryAllScore();
        model.addAttribute("list",list);

        return "allScore";
    }

    //跳转到增加成绩页面
    @RequestMapping("/toAddScore")
    public String toAddPaper() {
        return "addScore";
    }

    //添加成绩的请求
    @RequestMapping("/addScore")
    public String addScore(Score score) {
        System.out.println("addScore=>" + score);
        scoreService.addScore(score);
        return "redirect:/score/allScore";
    }

    //跳转到修改页面
    @RequestMapping(value = "/toUpdate/{id}")
    public String toUpdatePaper(@PathVariable(value = "id") Integer id, Model model) {
        Score score = scoreService.queryScoreById(id);
        model.addAttribute("qScore",score);
        return "updateScore";
    }

    //修改成绩
    @RequestMapping("/updateScore")
    public String updateScore(Score score) {
        System.out.println("updateScore=>" + score);
        scoreService.updateScore(score);

        return "redirect:/score/allScore";
    }

    //删除成绩
    @RequestMapping("/deleteScore/{id}")
    public String deleteScore(@PathVariable(value = "id") Integer id) {
        scoreService.deleteScoreById(id);

        return "redirect:/score/allScore";
    }

    //根据学号查询成绩
    @RequestMapping("/queryScore")
    public String queryScoreByStuId(int queryStuId,Model model) {
        Score score = scoreService.queryScoreByStuId(queryStuId);
        List<Score> list = new ArrayList<Score>();
        list.add(score);
        if (score==null) {
            model.addAttribute("error","未查到！");
        }
        model.addAttribute("list",list);
        return "allScore";
    }

    //根据课程编号查询成绩
    @RequestMapping("/queryScoreByCourseId")
    public String queryScoreByCourseId(int queryCourseId,Model model) {
        Score score = scoreService.queryScoreByCourseId(queryCourseId);
        List<Score> list = new ArrayList<Score>();
        list.add(score);
        if (score==null) {
            model.addAttribute("error","未查到！");
        }
        model.addAttribute("list",list);
        return "allScore";
    }
}
