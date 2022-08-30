package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.model.qa.model.Crawls;
import com.example.caseStudyMd3.model.qa.model.Shoes;

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
//            listNike(request,response);
//            listAdidas(request,response);
//            listJordan(request,response);
            listYeezy(request,response);
        }



        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
        protected void listNike(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Crawls crawls=new Crawls();
            List<Shoes> shoesList=crawls.getNike();
            request.setAttribute("listShoesN",shoesList);
            RequestDispatcher dispatcher=request.getRequestDispatcher("qa/listNike.jsp");
            dispatcher.forward(request,response);
        }
        protected void listAdidas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Crawls crawls=new Crawls();
            List<Shoes> shoesList=crawls.getAdidas();
            request.setAttribute("listShoesA",shoesList);
            RequestDispatcher dispatcher=request.getRequestDispatcher("qa/listAdidas.jsp");
            dispatcher.forward(request,response);
        }
        protected void listJordan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Crawls crawls=new Crawls();
            List<Shoes> shoesList=crawls.getJordan();
            request.setAttribute("listShoesJ",shoesList);
            RequestDispatcher dispatcher=request.getRequestDispatcher("qa/listJordan.jsp");
            dispatcher.forward(request,response);
        }
        protected void listYeezy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Crawls crawls=new Crawls();
            List<Shoes> shoesList=crawls.getYeezy();
            request.setAttribute("listShoesY",shoesList);
            RequestDispatcher dispatcher=request.getRequestDispatcher("qa/listYeezy.jsp");
            dispatcher.forward(request,response);
        }
    }


