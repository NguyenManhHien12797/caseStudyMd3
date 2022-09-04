package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.LoginDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.ILoginDAO;
import com.example.caseStudyMd3.model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

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

            default:
        }
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

    }

}
