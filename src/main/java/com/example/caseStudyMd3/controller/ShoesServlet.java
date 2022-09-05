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
import java.io.UnsupportedEncodingException;
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
                    showCreateForm(req, resp);
                    break;
                case "seller":
                    listProductSeller(req, resp);
                    break;
                case "detail":
                    viewShoesDetail(req, resp);
                    break;
                case "delete":
                    deleteProduct(req, resp);
                    break;
                case "sort":
                    sortByPrice(req, resp);
                    break;
                case "update":
                    showUpdateForm(req, resp);
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

    protected void listProductSeller(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        try {
            List<Shoes> listShoes = null;
            listShoes = iManagerDAO.selectAll();
            req.setAttribute("listShoes", listShoes);
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/sellerChannel.jsp");
            dispatcher.forward(req,resp);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private void showCreateForm(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/add_product.jsp");
        dispatcher.forward(req,resp);
    }
    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        int categoryId = Integer.parseInt(request.getParameter("input__category-cate"));
        int brandId = Integer.parseInt(request.getParameter("input__category"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String oldPrice = request.getParameter("oldPrice");
        String newPrice = request.getParameter("newPrice");
        String image = new String(request.getParameter("img").getBytes("iso-8859-1"), "utf-8");
        Shoes shoes = new Shoes(categoryId,brandId,name,oldPrice,newPrice,image) ;
        iProductDAO.create(shoes);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/add_product.jsp");
        request.setAttribute("message", "New product was created");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void deleteProduct(HttpServletRequest req,HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        iProductDAO.delete(id);
        List<Shoes> listShoes = null;
        try {
            listShoes = iProductDAO.selectAll();

        req.setAttribute("listShoes", listShoes);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/sellerChannel.jsp");
        dispatcher.forward(req,resp);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }


    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Shoes shoes = (Shoes) iManagerDAO.select(id);
        RequestDispatcher dispatcher;
        if(shoes == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("shoes", shoes);
            dispatcher = request.getRequestDispatcher("view/update_product.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        int id = Integer.parseInt(request.getParameter("id"));
        int categoryId = Integer.parseInt(request.getParameter("input__category-cate"));
        int brandId = Integer.parseInt(request.getParameter("input__category"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String oldPrice = request.getParameter("oldPrice");
        String newPrice = request.getParameter("newPrice");
        String image = new String(request.getParameter("img").getBytes("iso-8859-1"), "utf-8");
        Shoes shoes = new Shoes(id,categoryId,brandId,name,oldPrice,newPrice,image) ;

        iProductDAO.update(shoes);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ShopBae?action=seller");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
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
                    createProduct(req, resp);
                    break;
                case "update":
                    updateProduct(req, resp);
                    break;
                case "delete":
                    deleteProduct(req, resp);
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

