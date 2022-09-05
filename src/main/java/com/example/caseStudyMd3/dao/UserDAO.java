package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.config.ConnectionDB;

import com.example.caseStudyMd3.model.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserDAO {
    Connection connection = ConnectionDB.getConnect();

    private static final String QUERY_ALL_USER = "SELECT * FROM USER";
    private static final String QUERY_INSERT_NEW_ACCOUNT = "INSERT INTO USER (USERNAME,PASSWORD) VALUES (?,?)";
    private static final String QUERY_DEL_USERS_BY_ADMIN = "DELETE FROM USER WHERE ID = ?";
    private static final String QUERY_UPDATE_BY_USER = "UPDATE USER SET PASSWORD = ?,USERROLE = ?, NAME = ?,AVATAR = ?, GENDER = ?,BIRTHDATE= ?,MAIL =?,PHONE= ?,STATUS=? WHERE ID = ?";
    private static final String QUERY_UPDATE_BY_ADMIN = "UPDATE USER SET WHERE ID = ?";
    private static final String FIND_BY_ID = "SELECT * FROM USER WHERE ID = ?";
    private static final String QUERY_FIND_PASS_BY_ACCOUNT = "SELECT PASSWORD FROM USER WHERE ACCOUNT = ? AND MAIL = ?";
    public static final String SELECT_CHECK_USER_LOGIN = "SELECT * FROM USER WHERE username = ? AND password = ? ";


    public void insertUser(Users users) {
        try (PreparedStatement statement = connection.prepareStatement(QUERY_INSERT_NEW_ACCOUNT);)
        {
            statement.setString(1, users.getAccount());
            statement.setString(2, users.getPassword());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




    public boolean delete(int id) throws SQLException {
        boolean del = false;
        try (
                PreparedStatement statement = connection.prepareStatement(QUERY_DEL_USERS_BY_ADMIN);
                )
        {
            statement.setInt(1,id);
            del = statement.executeUpdate() > 0;
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
                String avatar = rs.getString(6);
                String gender = rs.getString(7);
                Date birthDate = rs.getDate(8);
                String mail = rs.getString(9);
                String phone = rs.getString(10);
                String status = rs.getString(11);
                user = new Users(username,password,role,name,avatar,gender,birthDate,mail,phone,status);
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
                String avatar = set.getString("avatar");
                String gender = set.getString("gender");
                Date birthDate = set.getDate("birthDate");
                String email = set.getString("mail");
                String phone = set.getString("phone");
                String status = set.getString("status");
                user = new Users(id,username,password,role,name,avatar,gender,birthDate,email,phone,status);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return user;

    }

    public List<Users> selectAllUsers() {
        List<Users> users = new ArrayList<>();
        try ( PreparedStatement preparedStatement = connection.prepareStatement(QUERY_ALL_USER);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String role = rs.getString("userRole");
                String name = rs.getString("name");
                String avatar = rs.getString("avatar");
                String gender = rs.getString("gender");
                Date birthDate = rs.getDate("birthDate");
                String mail = rs.getString("mail");
                String phone = rs.getString("phone");
                String status = rs.getString("status");
                users.add(new Users(id,username,password,role,name,avatar,gender,birthDate,mail,phone,status)) ;
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return users;
    }

    public boolean updateUser(Users users) throws SQLException {
        boolean rowUpdated;
        try (
                PreparedStatement statement = connection.prepareStatement(QUERY_UPDATE_BY_USER);
                )
        {
            statement.setString(1, users.getPassword());
            statement.setString(2, users.getRole());
            statement.setString(3, users.getName());
            statement.setString(4, users.getAvatar());
            statement.setString(5, users.getGender());
            statement.setDate(6, (java.sql.Date) users.getBirthDate());
            statement.setString(7, users.getMail());
            statement.setString(8, users.getPhone());
            statement.setString(9, users.getStatus());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }


}