package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.UserDAO;
import com.example.caseStudyMd3.model.Brand;
import com.example.caseStudyMd3.model.Category;
import com.example.caseStudyMd3.model.Product;
import com.example.caseStudyMd3.model.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


    @WebServlet(name = "AdminServlet", urlPatterns = "/admin")
    public class AdminServlet extends HttpServlet {
        UserDAO userDAO;

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null)
                action = "";

            switch (action) {
                default:
                    listUsers(request, response);
            }

        }

        private void insertUser(HttpServletRequest request, HttpServletResponse response)
                throws SQLException, IOException, ServletException {
            String account = request.getParameter("username");
            String password = request.getParameter("password");
            Users newUser = new Users(account, password);
            userDAO.insertUser(newUser);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/register.jsp");
            dispatcher.forward(request, response);
        }

        private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            List<Users> listUsers = userDAO.selectAllUsers();
            request.setAttribute("listUsers", listUsers);
            request.getRequestDispatcher("view/admin.jsp").forward(request, response);
        }
    }