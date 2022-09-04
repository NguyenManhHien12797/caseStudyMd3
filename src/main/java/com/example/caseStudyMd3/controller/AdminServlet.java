package com.example.caseStudyMd3.controller;

import com.example.caseStudyMd3.dao.UserDAO;
import com.example.caseStudyMd3.model.Brand;
import com.example.caseStudyMd3.model.Category;
import com.example.caseStudyMd3.model.Product;
import com.example.caseStudyMd3.model.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


    @WebServlet(name = "AdminServlet", urlPatterns = "/admin")
    public class AdminServlet extends HttpServlet {
        UserDAO userDAO;
        public void init() {
            userDAO = new UserDAO();
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            try {
                switch (action) {
                    case "create":
                        createUser(request, response);
                        break;
                    case "delete":
                        deleteUser(request, response);
                        break;
                    case "edit":
//                        editUser(request, response);
                        break;
                }
            } catch (SQLException e) {
                throw new ServletException();
            }
        }

        private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
            int id = Integer.parseInt(request.getParameter("id"));
            userDAO.delete(id);

            List<Users> userList = userDAO.selectAllUsers();
            request.setAttribute("LIST", userList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/admin.jsp");
            dispatcher.forward(request, response);
        }

        private void createUser(HttpServletRequest request, HttpServletResponse response)
                throws SQLException, IOException, ServletException {
            String account = request.getParameter("username");
            String password = request.getParameter("password");
            Users newUser = new Users(account, password);
            userDAO.insertUser(newUser);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/register.jsp");
            request.setAttribute("alo", "New user was created!");
            dispatcher.forward(request, response);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null)
                action = "";

            switch (action) {
                case "create":
                    showCreateForm(request, response);
                    break;
                default:
                    listUsers(request, response);
                    break;
            }

        }

        private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/register.jsp");
            dispatcher.forward(request, response);
        }


        private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            List<Users> userList = userDAO.selectAllUsers();
            request.setAttribute("LIST", userList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/admin.jsp");
            dispatcher.forward(request, response);
        }
    }