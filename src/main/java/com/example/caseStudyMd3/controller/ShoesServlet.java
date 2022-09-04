package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.IManagerDAO;
import com.example.caseStudyMd3.dao.ShoesDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.IProductDAO;
import com.example.caseStudyMd3.model.productShoes.Shoes;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/ShopBae")
public class ShoesServlet extends HttpServlet {
    private IManagerDAO iManagerDAO;
    private IProductDAO iProductDAO;

    public void init() {
        iManagerDAO = new ShoesDAO();
        iProductDAO = new ShoesDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        try{
            switch (action){
                case "create":
                    break;
                case "edit":
                    break;
                case "detail":
                    viewShoesDetail(req, resp);
                    break;
                case "delete":
                    break;
                case "sort":
                    sortByPrice(req, resp);
                    break;

                default:
                    listProduct(req,resp);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    protected void listProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        try {
            List<Shoes> listShoes = null;
            listShoes = iManagerDAO.selectAll();
            req.setAttribute("listShoes", listShoes);
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/homepage.jsp");
            dispatcher.forward(req,resp);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }




    private void searchShoes(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String search = req.getParameter("search");
        List<Shoes> listShoes = iManagerDAO.search(search);
        req.setAttribute("listShoes", listShoes);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/homepage.jsp");
        dispatcher.forward(req,resp);

    }

    private void sortByPrice(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String str = req.getParameter("sort");
        System.out.println(str);
        List<Shoes> listShoes = iProductDAO.sortByPrice(str);
        System.out.println(listShoes);
        req.setAttribute("listShoes", listShoes);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/homepage.jsp");
        dispatcher.forward(req,resp);

    }

    private void viewShoesDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Shoes shoes = (Shoes) iManagerDAO.select(id);
        RequestDispatcher dispatcher;
        if(shoes == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("shoes", shoes);
            dispatcher = request.getRequestDispatcher("view/product_details.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        try{
            switch (action){
                case "create":
                    break;
                case "edit":
                    break;
                case "delete":
                    break;
                case "search":
                    searchShoes(req, resp);
                    break;
                default:
                    listProduct(req,resp);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

    }


}

