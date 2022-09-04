package com.example.caseStudyMd3.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    public static final String URL = "jdbc:mysql://localhost:3306/Case_Study";
    public static final String USER = "root";

    public static final String PASSWORD = "chetdicon";

    public ConnectionDB() {
    }


    public static Connection getConnect() {
        Connection connect = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connect;

    }

}
