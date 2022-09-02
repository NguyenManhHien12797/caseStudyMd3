package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.model.Product;
import com.example.caseStudyMd3.model.Users;

import java.util.List;

public interface IUserDAO {
    List<Users> getAll();

    void add(Users users);

    boolean update(int id, Users users);

    boolean delete(int id);

    Users findById(int id);

    public List<Product> selectAllUsers();
    String findPassByAccount(String account, String email);
    boolean updateByUser(String account,Users users);
    int findByUser(Users users);
}
