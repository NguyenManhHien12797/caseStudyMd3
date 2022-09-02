package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.ShoesDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.BrandDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.IProductDAO;
import com.example.caseStudyMd3.model.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CartServlet", value = "/cart")

public class CartServlet extends HttpServlet {
}