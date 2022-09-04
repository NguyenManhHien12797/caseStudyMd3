package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.ShoesDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.BrandDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.IProductDAO;
import com.example.caseStudyMd3.model.Brand;
import com.example.caseStudyMd3.model.Item;
import com.example.caseStudyMd3.model.Product;
import com.mysql.cj.x.protobuf.MysqlxCrud;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet", value = "/cart")

public class CartServlet extends HttpServlet {
    private final IProductDAO iProductService = (IProductDAO) new ShoesDAO();
    private final List<Brand> brands = new BrandDAO().selectAll();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        action(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        action(req,resp);
    }

    private void action(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null)
            action = "";

        switch (action) {
            case "add":
                addToCart(req,resp);
                break;
            case "remove":
                removeProduct(req,resp);
                break;
            case "checkout":
                checkoutCart(req,resp);
                break;

            default:
                displayCart(req,resp);
        }
    }


    private void checkoutCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        session.setAttribute("cart",cart);
        req.setAttribute("brands",brands);
        req.getRequestDispatcher("/view/checkout.jsp").forward(req,resp);
    }

    private void removeProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = (Product) iProductService.findById(id);
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        cart.removeIf(item -> item.getProduct().getId() == product.getId());
        int subtotal = 0;
        for (Item item:cart) {
            subtotal += item.getProduct().getNewPrice() * item.getQuantity();
        }
        session.setAttribute("subtotal", subtotal);
        session.setAttribute("cart",cart);
        req.setAttribute("brands",brands);
        req.getRequestDispatcher("/view/cart.jsp").forward(req,resp);
    }


    private void addToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int id = Integer.parseInt(req.getParameter("id"));
        int quantity = 1;
        Product product = (Product) iProductService.findById(id);
        List<Item> cart;
        if(req.getParameter("quantity") != null){
            quantity = Integer.parseInt(req.getParameter("quantity"));
        }
        if(session.getAttribute("cart") == null){
            cart = new ArrayList<>();
            cart.add(new Item(product,quantity));
        } else {
            cart = (List<Item>) session.getAttribute("cart");
            boolean check = false;
            for (Item item:cart) {
                if(item.getProduct().getId() == product.getId()){
                    item.setQuantity(item.getQuantity() + quantity);
                    check = true;
                }
            }
            if(check == false){
                cart.add(new Item(product,quantity));
            }
        }
        int subtotal = 0;
        for (Item item:cart) {
            subtotal += item.getProduct().getNewPrice() * item.getQuantity();
        }
        session.setAttribute("subtotal", subtotal);
        session.setAttribute("cart",cart);
        req.setAttribute("brands",brands);
        req.getRequestDispatcher("/view/cart.jsp").forward(req,resp);
    }

    private void displayCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Item> cart;
        if(session.getAttribute("cart") == null){
            cart = new ArrayList<>();
        } else {
            cart = (List<Item>) session.getAttribute("cart");
        }
        int subtotal = 0;
        for (Item item:cart) {
            subtotal += item.getProduct().getNewPrice() * item.getQuantity();
        }
        session.setAttribute("subtotal", subtotal);
        session.setAttribute("cart",cart);
        req.setAttribute("brands",brands);
        req.getRequestDispatcher("/view/cart.jsp").forward(req,resp);
    }
}