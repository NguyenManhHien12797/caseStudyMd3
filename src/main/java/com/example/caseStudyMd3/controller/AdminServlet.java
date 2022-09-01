package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.model.Brand;
import com.example.caseStudyMd3.model.Category;
import com.example.caseStudyMd3.service.implementService.BrandService;
import com.example.caseStudyMd3.service.implementService.UserService;
import com.example.caseStudyMd3.service.interfaceService.IBrandService;
import com.example.caseStudyMd3.service.interfaceService.IUserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


    @WebServlet(name = "AdminServlet", urlPatterns = "/admin")
    public class AdminServlet extends HttpServlet {
        private final IUserService iUsersService = new UserService();

        private final IProductService iProductService = new ProductServiceImplement();
        private final ICategoryService categoryService = new CategoryServiceImplement();
        private final IBrandService brandService = new BrandService();
        private final List<Brand> brands = brandService.getAll();
        private final List<Category> categories = categoryService.getAll();
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            action(request, response);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            action(request, response);

        }
        private void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null)
                action = "";

            switch (action) {
                case "products":
                    getAllProducts(request,response);
                    break;
                case "add":
                    addProduct(request,response);
                    break;
                case "showFormEdit":
                    editGet(request,response);
                    break;
                case "edit":
                    editProduct(request,response);
                    break;
                case "delete":
                    deleteProduct(request,response);
                    break;
                case "laptops":
                    getAllLaptops(request,response);
                    break;
                case "smartphone":
                    getAllSmartPhones(request,response);
                    break;
                case "tablet":
                    getAllTablets(request,response);
                    break;
                case "users":
                    getAllUsers(request,response);
                    break;
                case "admins":
                    getAllAdmins(request,response);
                    break;
                case "customers":
                    getAllCustomer(request,response);
                    break;
                case "active":
                    activeAccount(request,response);
                    break;
                case "blocked":
                    blockedAccount(request,response);
                default:
                    display(request,response);
            }

        }

    }

