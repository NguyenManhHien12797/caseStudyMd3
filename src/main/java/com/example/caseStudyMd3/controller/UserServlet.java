//package com.example.caseStudyMd3.controller;
//
//package com.example.users_managerment.controller;
//
//
//import com.example.caseStudyMd3.dao.IUserDAO;
//import com.example.caseStudyMd3.dao.UserDao;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//@WebServlet(name = "UserServlet", urlPatterns = "/users")
//public class UserServlet  extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//    private IUserDAO userDAO;
//
//    public void init() {
//        userDAO = new UserDao();
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//        try {
//            switch (action) {
//                case "create":
//                    insertUser(request, response);
//                    break;
//                case "edit":
//                    updateUser(request, response);
//                    break;
//            }
//        } catch (SQLException ex) {
//            throw new ServletException(ex);
//        }
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//
//        try {
//            switch (action) {
//                case "create":
//                    showNewForm(request, response);
//                    break;
//                case "edit":
//                    showEditForm(request, response);
//                    break;
//                case "delete":
//                    deleteUser(request, response);
//                    break;
//                default:
//                    listUser(request, response);
//                    break;
//            }
//        } catch (SQLException ex) {
//            throw new ServletException(ex);
//        }
//    }
//
////    private void listUser(HttpServletRequest request, HttpServletResponse response)
////            throws SQLException, IOException, ServletException {
////        List<User> listUser = userDAO.selectAllUsers();
////        request.setAttribute("listUser", listUser);
////        RequestDispatcher dispatcher = request.getRequestDispatcher("users/list.jsp");
////        dispatcher.forward(request, response);
////    }
//
//    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("users/create.jsp");
//        dispatcher.forward(request, response);
//    }
//
////    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
////            throws SQLException, ServletException, IOException {
////        int id = Integer.parseInt(request.getParameter("id"));
////        User existingUser = userDAO.selectUser(id);
////        RequestDispatcher dispatcher = request.getRequestDispatcher("users/edit.jsp");
////        request.setAttribute("user", existingUser);
////        dispatcher.forward(request, response);
////
////    }
//
//    private void insertUser(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//        String name = new String(request.getParameter("name").getBytes("iso-8859-1"),"utf-8");
//        String email = request.getParameter("email");
//        String country = new String(request.getParameter("country").getBytes("iso-8859-1"), "utf-8");
//        User newUser = new User(name, email);
//        userDAO.insertUser(newUser);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("users/create.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void updateUser(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
//        String email = request.getParameter("email");
//        String country = new String(request.getParameter("country").getBytes("iso-8859-1"), "utf-8");
//
//        User book = new User(id, name, email, country);
//        userDAO.updateUser(book);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("users/edit.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        userDAO.deleteUser(id);
//
//        List<User> listUser = userDAO.selectAllUsers();
//        request.setAttribute("listUser", listUser);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("users/list.jsp");
//        dispatcher.forward(request, response);
//    }
//
//}
//
