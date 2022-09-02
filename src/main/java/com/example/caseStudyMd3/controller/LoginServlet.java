package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.service.IUserService;
import com.example.caseStudyMd3.service.RS.Role;
import com.example.caseStudyMd3.service.RS.Status;
import com.example.caseStudyMd3.model.qa.Users;
import com.example.caseStudyMd3.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private final IUserService iUserService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        showLoginForm(request, response);
    }

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";

        switch (action) {
            case "login":
                login(request, response);
                break;
        }
    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        Users users = new Users(account, password);
        int userID = iUserService.findByUser(users);
        if (userID == -1) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login/index.jsp");
            String message = "Account or password is invalid";
            request.setAttribute("message", message);
            dispatcher.forward(request, response);
        } else {
            Users users1 = iUserService.findById(userID);
            Role role = users1.getRole();
            HttpSession session = request.getSession();
            session.setAttribute("userID", userID);
            session.setAttribute("account", account);
            session.setAttribute("password", password);
            session.setAttribute("role", role);
            if (role == Role.ADMIN){
                response.sendRedirect("/admin");
            } else if (role == Role.USER) {
                response.sendRedirect("/home");
            }
        }
    }
}
