package com.example.caseStudyMd3.controller;
import com.example.caseStudyMd3.dao.UserDao;
import com.example.caseStudyMd3.model.Users;

import com.example.caseStudyMd3.dao.LoginDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.ILoginDAO;
import com.example.caseStudyMd3.model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

<<<<<<< HEAD

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
=======
@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private ILoginDAO iLoginDAO;

    public void init() {
        iLoginDAO = new LoginDAO();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "login":
               showLogin(req, resp);
                break;
            case "logout":
                logout(req, resp);
                break;
            case "logout_in_detail":
                logoutInDetail(req, resp);
                break;
            default:
        }
    }

    private void logoutInDetail(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("account");
        String id = req.getParameter("id");
        resp.sendRedirect("/ShopBae?action=detail&id="+id);
    }


    private void showLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/login.jsp");
        dispatcher.forward(req,resp);


    }
    @Override
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


    private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String pass = req.getParameter("password");
        System.out.println(name + pass);
        Account account = (Account) iLoginDAO.searchAccount(name,pass);
        if(account== null){
            req.setAttribute("mess","Somthing wrong");
            req.getRequestDispatcher("view/login.jsp").forward(req,resp);
        }
       else {
          HttpSession session = req.getSession();
          session.setAttribute("account",account);
          resp.sendRedirect("/ShopBae");

        }
>>>>>>> hien

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login/index.jsp");
        dispatcher.forward(request, response);
    }

<<<<<<< HEAD
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
=======
    private void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("account");
        resp.sendRedirect("/ShopBae");
    }


}
>>>>>>> hien
