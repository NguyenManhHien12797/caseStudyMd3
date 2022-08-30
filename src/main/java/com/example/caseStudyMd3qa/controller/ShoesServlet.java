package com.example.caseStudyMd3qa.controller;

//<<<<<<< HEAD:src/main/java/com/example/demogit/model/qa/controller/ShoesServlet.java
import com.example.caseStudyMd3qa.model.Crawls;
import com.example.caseStudyMd3qa.model.Shoes;
import com.example.caseStudyMd3qa.model.ShoesDAO;
//>>>>>>> 13e4c821e58e4ca9f95618fc0aec3c0d67372378:src/main/java/com/example/caseStudyMd3/model/qa/controller/ShoesServlet.java

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


    @WebServlet(name = "ShoesServlet",value = "/shoes")
    public class ShoesServlet extends HttpServlet {
        private ShoesDAO shoesDAO=new ShoesDAO();
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
        private void insertShoes(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
            int id = Integer.parseInt(request.getParameter("id"));
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            int brandId = Integer.parseInt(request.getParameter("brandId"));
            String name = request.getParameter("name");
            String oldPrice = request.getParameter("oldPrice");
            String newPrice = request.getParameter("newPrice");
            String image = request.getParameter("image");

            Shoes shoes = new Shoes(id,categoryId, brandId, name,oldPrice,newPrice,image);
            shoesDAO.insertShoes(shoes);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/create.jsp");
            dispatcher.forward(request, response);
        }
    }


