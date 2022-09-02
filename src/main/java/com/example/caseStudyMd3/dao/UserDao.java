package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.config.ConnectionDB;
import com.example.caseStudyMd3.model.qa.Users;
import com.example.caseStudyMd3.service.RS.Role;
import com.example.caseStudyMd3.service.RS.Status;

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
            "(ACCOUNT,PASSWORD,ROLE,NAME,GENDER,AGE,BIRTHDATE,MAIL,PHONE,ROLE) " +
            "VALUES(?,?,?,?,?,?,?,?,?,?)";
    private static final String QUERY_DEL_USERS_BY_ADMIN = "DELETE FROM USERS WHERE ID = ?";
    private static final String QUERY_UPDATE_BY_USER = "UPDATE USERS SET PASSWORD = ?,NAME = ?,GENDER = ?,AGE = ?,BIRTHDATE= ?,MAIL =?,PHONE= ? " +
            "WHERE ACCOUNT = ?";
    private static final String QUERY_UPDATE_BY_ADMIN = "UPDATE USERS SET STATUS = ? WHERE ID = ?";
    private static final String QUERY_FIND_BY_ID = "SELECT * FROM USER WHERE ID = ?";
    private static final String QUERY_FIND_PASS_BY_ACCOUNT = "SELECT PASSWORD FROM USERS WHERE ACCOUNT = ? AND MAIL = ?";
    private static final String QUERY_FIND_BY_USER = "SELECT ID FROM USERS WHERE ACCOUNT = ? AND PASSWORD = ?";


    public List<Users> getAll() {
        return null;
    }

    public boolean add(Users users) {
        boolean rowAdded = false;
        try {
            PreparedStatement statement = connection.prepareStatement(QUERY_INSERT_ACCOUNT_BY_ADMIN);
            statement.setString(1, users.getAccount());
            statement.setString(2, users.getPassword());
            statement.setString(3, users.getName());
            statement.setString(4, users.getGender());
            statement.setString(5, users.getAge());
            statement.setDate(6, (java.sql.Date) users.getBirthDate());
            statement.setString(7, users.getMail());
            statement.setString(8, users.getPhone());
            statement.setString(9, String.valueOf(users.getRole()));
            rowAdded = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowAdded;
    }


    public boolean update(int id, Users users) {
        return false;
    }


    public boolean delete(int id) {
        return false;
    }


    public Users findById(int id) {
        Users user = null;
        try {
            PreparedStatement statement = connection.prepareStatement(QUERY_FIND_BY_ID);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                String username = rs.getString(2);
                String password = rs.getString(3);
                String name = rs.getString(4);
                String gender = rs.getString(5);
                String age = String.valueOf(rs.getInt(6));
                Date birthday = rs.getDate(7);
                String email = rs.getString(8);
                String phone = rs.getString(9);
                Role role = Role.valueOf(rs.getString(10));
                user = new Users(id,username,password,name,gender,age,birthday,email,phone,role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user ;
    }

    public String findPassByAccount(String account, String email) {
        return null;
    }


    public boolean updateByUser(String account, Users users) {
        return false;
    }


    public int findByUser(Users users) {
        return 0;
    }
}
