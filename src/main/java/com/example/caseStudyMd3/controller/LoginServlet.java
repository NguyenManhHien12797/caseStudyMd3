package com.example.caseStudyMd3.controller;
import com.example.caseStudyMd3.dao.UserDAO;
import com.example.caseStudyMd3.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private final UserDAO userDao = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";
        switch (action) {
            default:
                showLoginForm(request, response);
                break;
        }
    }

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        login(request, response);
    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        Users users = userDao.checkUser(account, password);
        if (users != null) {
            String role = users.getRole();

            switch (role) {
                case "ADMIN":
                    RequestDispatcher dispatcher = request.getRequestDispatcher("view/admin.jsp");
                    dispatcher.forward(request, response);
                    break;
                case "USER":
                    RequestDispatcher dispatcher1 = request.getRequestDispatcher("view/homepage.jsp");
                    dispatcher1.forward(request, response);
                    break;
            }
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/login.jsp");
            String message = "Account or password is invalid";
            request.setAttribute("message", message);
            dispatcher.forward(request, response);
        }

    }
}