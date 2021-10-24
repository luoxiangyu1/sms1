package com.lxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class LoginController {

    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/goAdminLogin")
    public String goLogin() {
        return "adminLogin";
    }

    @RequestMapping("/adminLogin")
    public String login(HttpSession session, String adminName, String adminPwd, Model model) {
        session.setAttribute("adminLoginInfo",adminName);
        model.addAttribute("adminName",adminName);
        return "main";
    }

}
