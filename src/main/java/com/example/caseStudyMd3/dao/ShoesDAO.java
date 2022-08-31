package com.example.caseStudyMd3.dao;

import com.example.demogit.model.qa.model.IShoes;
import model.Shoes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ShoesDAO implements IShoes {
    private String jdbcURL ="jdbc:mysql://localhost:3306/case_study";
    private String jdbcUsername ="root";
    private String jdbcPassword= "123456";
    private static final String INSERT_Shoes_SQL = "INSERT INTO  (categoryId, brandId, name,oldPrice,newPrice,image) VALUES (?, ?, ?,?,?,?);";
    protected Connection getConnection(){
        Connection connection =null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                connection = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    public void insertShoes(Shoes shoes){
        Connection connection=getConnection();

        try {
            PreparedStatement statement = connection.prepareStatement(INSERT_Shoes_SQL);
            statement.setInt(1,shoes.getCategoryId());
            statement.setInt(2,shoes.getBrandId());
            statement.setString(3,shoes.getName());
            statement.setString(4,shoes.getOldPrice());
            statement.setString(5,shoes.getNewPrice());
            statement.setString(6,shoes.getImage());
            statement.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
