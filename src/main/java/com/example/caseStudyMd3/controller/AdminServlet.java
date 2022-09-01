package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.service.implementService.UserService;
import com.example.caseStudyMd3.service.interfaceService.IBrandService;
import com.example.caseStudyMd3.service.interfaceService.IUserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


    @WebServlet(name = "AdminServlet", urlPatterns = "/admin")
    public class AdminServlet extends HttpServlet {
        private final IUserService iUsersService = new UserService();
    }

