package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.IManagerDAO;
import com.example.caseStudyMd3.dao.ShoesDAO;
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

    public void init() {
        iManagerDAO = new ShoesDAO();
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
                case "delete":
                    break;
                case "search":
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
                    break;
                default:
                    listProduct(req,resp);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

    }


}
