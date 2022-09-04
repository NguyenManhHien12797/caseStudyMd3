package com.example.caseStudyMd3.controller;
import com.example.caseStudyMd3.dao.UserDao;
import com.example.caseStudyMd3.model.qa.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private static Cookie cookie;
    private final UserDao userDao = new UserDao();

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
        cookie.setMaxAge(0);
    }

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login/index.jsp");
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
                    RequestDispatcher dispatcher = request.getRequestDispatcher("qa/listAdidas.jsp");
                    dispatcher.forward(request, response);
                    break;
                case "USER":
                    RequestDispatcher dispatcher1 = request.getRequestDispatcher("view/login.jsp");
                    dispatcher1.forward(request, response);
                    break;
            }
            cookie = new Cookie("user",users.getName());
            cookie.setMaxAge(200);
            response.addCookie(cookie);
            request.setAttribute("user",users);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login/index.jsp");
            String message = "Account or password is invalid";
            request.setAttribute("message", message);
            dispatcher.forward(request, response);
        }

    }
}
