package com.example.caseStudyMd3.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    private static Connection connect;

    public static final String URL = "jdbc:mysql://localhost:3306/Case_Study";
    public static final String USER = "root";
    public static final String PASSWORD = "88888888";

    public ConnectionDB() {
    }


    public static Connection getConnect() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;

    }

    public static void main(String[] args) {
        getConnect();

    }

}
