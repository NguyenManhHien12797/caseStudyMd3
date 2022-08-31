package com.example.caseStudyMd3.service;

import com.example.caseStudyMd3.model.Users;

public interface IUserService extends IService<Users> {
    String findPassByAccount(String account, String email);
    boolean updateByUser(String account,Users users);
    int findByUser(Users users);
}
