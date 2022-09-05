package com.example.caseStudyMd3.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "DetailsServlet", urlPatterns = "/details")
public class DetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "addToCart":
                addToCart(req, resp);
                break;
            case "logout":
                break;
            case "logout_in_detail":
                break;
            default:
        }
    }

    private void addToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
//        resp.sendRedirect("/ShopBae?action=details&id="+id);
//        resp.sendRedirect("/ShopBae?action=details&id="+id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/ShopBae");
        dispatcher.forward(req,resp);
//        RequestDispatcher dispatcher = req.getRequestDispatcher("/ShopBae?action=details&id="+id).forward(req,resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){

            case "login":
                break;

            default:
        }
    }



}
