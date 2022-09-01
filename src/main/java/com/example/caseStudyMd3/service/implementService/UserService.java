package com.example.caseStudyMd3.service.implementService;

import com.example.caseStudyMd3.dao.interfaceDAO.IUserDAO;
import com.example.caseStudyMd3.dao.implementDAO.UserDao;
import com.example.caseStudyMd3.model.Users;
import com.example.caseStudyMd3.service.interfaceService.IUserService;

import java.util.List;

public class UserService implements IUserService {

    private final IUserDAO usersDao = new UserDao();
    @Override
    public List<Users> getAll() {
        return null;
    }

    @Override
    public boolean add(Users users) {
        return false;
    }

    @Override
    public boolean update(int id, Users users) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public Users findById(int id) {
        return null;
    }

    @Override
    public String findPassByAccount(String account, String email) {
        return null;
    }

    @Override
    public boolean updateByUser(String account, Users users) {
        return false;
    }

    @Override
    public int findByUser(Users users) {
        return 0;
    }
}
