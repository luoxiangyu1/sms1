package com.lxy.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();

        if (request.getRequestURI().contains("goAdminLogin")) {
            return true;
        }

        if (request.getRequestURI().contains("adminLogin")) {
            return true;
        }

        if (session.getAttribute("adminLoginInfo") != null) {
            return true;
        }

        request.getRequestDispatcher("/WEB-INF/jsp/adminLogin.jsp").forward(request,response);
        return false;
    }
}
