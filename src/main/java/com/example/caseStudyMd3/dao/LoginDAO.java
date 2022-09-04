package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.config.ConnectionDB;
import com.example.caseStudyMd3.dao.interfaceDAO.ILoginDAO;
import com.example.caseStudyMd3.model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class LoginDAO implements ILoginDAO {
    Connection connection = ConnectionDB.getConnect();
    @Override
    public List<Account> selectAll() throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public Account select(int id_num) {
        return null;
    }

    @Override
    public Account searchAccount(String input_name, String input_pass) {
        Account account=null;
        try (
                PreparedStatement statement = connection.prepareStatement("SELECT * FROM account WHERE name = ? AND pass = ?; ");) {
            statement.setString(1, input_name);
            statement.setString(2, input_pass);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String pass = resultSet.getString("pass");
                String image = resultSet.getString("img");
                account = new Account(name, pass, image);
            }
            System.out.println(account);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return account;

    }
}
