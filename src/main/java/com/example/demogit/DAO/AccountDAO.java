package com.example.demogit.DAO;

import java.sql.*;

public class AccountDAO {
    public static final String URL = "jdbc:mysql://localhost:3306/case_study";
    public static final String USER = "root";
    public static final String PASSWORD = "chetdicon";

    public boolean checkLogin(String username, String password) {
        boolean isValid = false;
        try{
            Class.forName("com.mysql.jdbc.SQLServerDriver");
            Connection connect = DriverManager.getConnection(URL, USER, PASSWORD);
            String sql = "select * from account_admin where username = ? and password = ?";
            PreparedStatement pre = connect.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            ResultSet rs = pre.executeQuery();
            if(rs.next()) {
                isValid = true;
                System.out.println("log in thanh cong");
            } else {
                isValid = false;
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return isValid;
    }


}
