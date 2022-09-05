package com.example.caseStudyMd3.controller;
import com.example.caseStudyMd3.dao.UserDAO;
import com.example.caseStudyMd3.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    UserDAO userDAO;
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";
        switch (action) {
            case "login":
                showLoginForm(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "logout_in_detail":
                logoutInDetail(request, response);
                break;
            default:
        }
    }

    private void logoutInDetail(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("users");
        String id = req.getParameter("id");
        resp.sendRedirect("/ShopBae?action=detail&id="+id);
    }

    private void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("users");
        resp.sendRedirect("/ShopBae");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "login":
                login(req, resp);
                break;
            default:
        }
    }

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/login.jsp");
        dispatcher.forward(request, response);
    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        Users users = userDAO.checkUser(account, password);
        String status = users.getStatus();
        if (users != null && status.equals("ACTIVE")) {
            String role = users.getRole();

            HttpSession session = request.getSession();
            switch (role) {
                case "ADMIN":
                    session.setAttribute("users",users);
                    response.sendRedirect("view/homepage_admin.jsp");
                    break;
                case "USER":
                    session.setAttribute("users",users);
                    response.sendRedirect("view/homepage.jsp");
                    break;
            }
        } else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/login.jsp");
            String message = "Account or password is invalid";
            request.setAttribute("message", message);
            dispatcher.forward(request, response);
        }



    }
}