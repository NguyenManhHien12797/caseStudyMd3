//package com.example.caseStudyMd3.controller;
//
//import com.example.caseStudyMd3.dao.SearchDAO;
//import com.example.caseStudyMd3.model.Product;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "SearchServlet", urlPatterns = "/search")
//public class SearchServlet extends HttpServlet {
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("UTF-8");
//        String txtSearch = request.getParameter("search");
//        SearchDAO searchDAO = new SearchDAO();
//        List<Product> list = searchDAO.searchByName(txtSearch);
//        request.setAttribute("",searchDAO);
//        request.getRequestDispatcher("homepage.jsp").forward(request,response);
//    }
//}
