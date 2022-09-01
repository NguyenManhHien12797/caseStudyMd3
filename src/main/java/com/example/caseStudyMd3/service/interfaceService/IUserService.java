package com.example.caseStudyMd3.service.interfaceService;

import com.example.caseStudyMd3.model.Users;
import com.example.caseStudyMd3.service.IGeneralService;

public interface IUserService extends IGeneralService<Users> {
    String findPassByAccount(String account, String email);
    boolean updateByUser(String account,Users users);
    int findByUser(Users users);
}
