package com.example.demogit.model.qa.controller;

import com.example.demogit.model.qa.model.Crawls;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


    @WebServlet(name = "ShoesServlet",value = "/shoes")
    public class ShoesServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            listFood(request,response);
        }



        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
        protected void listFood(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Crawls crawls=new Crawls();
            List<model.Shoes> shoesList=crawls.getFoodlist();
            request.setAttribute("listShoes",shoesList);
            RequestDispatcher dispatcher=request.getRequestDispatcher("view/display.jsp");
            dispatcher.forward(request,response);
        }
    }


