package com.example.caseStudyMd3.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
//    private final IUserService iUsersService = new UsersService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

//    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String account = request.getParameter("account");
//        String password = request.getParameter("password");
//        Users users = new Users(account, password);
//        int userID = iUsersService.findByUser(users);
//        if (userID == -1) {
//            RequestDispatcher dispatcher = request.getRequestDispatcher("login/index.jsp");
//            String message = "Account or password is invalid";
//            request.setAttribute("message", message);
//            dispatcher.forward(request, response);
//        } else {
//            Users users1 = iUsersService.findById(userID);
//            Role role = users1.getRole();
//            Status status = users1.getStatus();
//            HttpSession session = request.getSession();
//            session.setAttribute("userID", userID);
//            session.setAttribute("account", account);
//            session.setAttribute("password", password);
//            session.setAttribute("role", role);
//            if (role == Role.ADMIN && status == Status.ACTIVE){
//                response.sendRedirect("/admin");
//            } else if (role == Role.USER && status == Status.ACTIVE) {
//                response.sendRedirect("/home");
//            }
//        }
//    }
}
