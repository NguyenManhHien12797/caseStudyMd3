package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.config.ConnectionDB;

import com.example.caseStudyMd3.model.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class UserDao{
    Connection connection = ConnectionDB.getConnect();

    private static final String QUERY_ALL_USER = "SELECT * FROM USER";
    private static final String QUERY_INSERT_ACCOUNT_BY_ADMIN = "INSERT INTO USER" +
            "(ACCOUNT,PASSWORD,ROLE,NAME,GENDER,BIRTHDATE,MAIL,PHONE) " +
            "VALUES(?,?,?,?,?,?,?,?,?)";
    private static final String QUERY_DEL_USERS_BY_ADMIN = "DELETE FROM USER WHERE ID = ?";
    private static final String QUERY_UPDATE_BY_USER = "UPDATE USER SET PASSWORD = ?,NAME = ?,GENDER = ?,AGE = ?,BIRTHDATE= ?,MAIL =?,PHONE= ? " +
            "WHERE ACCOUNT = ?";
    private static final String QUERY_UPDATE_BY_ADMIN = "UPDATE USER SET WHERE ID = ?";
    private static final String FIND_BY_ID = "SELECT * FROM USER WHERE ID = ?";
    private static final String QUERY_FIND_PASS_BY_ACCOUNT = "SELECT PASSWORD FROM USER WHERE ACCOUNT = ? AND MAIL = ?";
    public static final String SELECT_CHECK_USER_LOGIN = "SELECT * FROM USER WHERE username = ? AND password = ? ";


    public List<Users> getAll() {
        return null;
    }

    public boolean edit(Users users) {
        boolean rowAdded = false;
        try {
            PreparedStatement statement = connection.prepareStatement(QUERY_INSERT_ACCOUNT_BY_ADMIN);
            statement.setString(1, users.getAccount());
            statement.setString(2, users.getPassword());
            statement.setString(3, String.valueOf(users.getRole()));
            statement.setString(4, users.getName());
            statement.setString(5, users.getGender());
            statement.setDate(6, (java.sql.Date) users.getBirthDate());
            statement.setString(7, users.getMail());
            statement.setString(8, users.getPhone());
            rowAdded = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowAdded;
    }




    public boolean delete(int id) {
        boolean del = false;
        try {
            PreparedStatement statement = connection.prepareStatement(QUERY_DEL_USERS_BY_ADMIN);
            statement.setInt(1,id);
            del = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return del;
    }


    public Users findById(int id) {
        Users user = null;
        try {
            PreparedStatement statement = connection.prepareStatement(FIND_BY_ID);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                String username = rs.getString(2);
                String password = rs.getString(3);
                String role = rs.getString(4);
                String name = rs.getString(5);
                String gender = rs.getString(6);
                Date birthDate = rs.getDate(7);
                String mail = rs.getString(8);
                String phone = rs.getString(9);
                user = new Users(username,password,role,name,gender,birthDate,mail,phone);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user ;
    }


    public Users checkUser(String username, String password){

        Users user = null;

        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_CHECK_USER_LOGIN);
            statement.setString(1,username);
            statement.setString(2,password);

            ResultSet set = statement.executeQuery();

            if (set.next()){

                int id = set.getInt("id");
                String role = set.getString("userRole");
                String name = set.getString("name");
                String gender = set.getString("gender");
                Date birthDate = set.getDate("birthDate");
                String email = set.getString("mail");
                String phone = set.getString("phone");
                user = new Users(id,username,password,role,name,gender,birthDate,email,phone);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return user;

    }

    public boolean updateByUser(String account, Users users) {
        return false;
    }


}