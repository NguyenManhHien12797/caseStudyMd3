package com.example.caseStudyMd3.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    private static Connection connect;

    public static final String URL = "jdbc:mysql://localhost:3306/case_study";
    public static final String USER = "root";
    public static final String PASSWORD = "chetdicon";

    protected Connection getConnect(){
        if (connect==null){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connect = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("ket noi thanh cong");
            } catch (ClassNotFoundException | SQLException e) {
                System.out.println("ket noi khong thanh cong");
                e.printStackTrace();
            }
        }
        return connect;
    }


    public static void main(String[] args) {
        ConnectionDB connectionDB = new ConnectionDB();
        connectionDB.getConnect();
    }
}
