package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.model.Product;
import com.example.caseStudyMd3.model.Users;

import java.util.List;

public interface IUserDAO extends IDAO<Users> {
    public List<Product> selectAllUsers();
    String findPassByAccount(String account, String email);
    boolean updateByUser(String account,Users users);
    int findByUser(Users users);
}
