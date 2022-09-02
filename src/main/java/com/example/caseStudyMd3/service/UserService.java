package com.example.caseStudyMd3.service;

import com.example.caseStudyMd3.dao.UserDao;
import com.example.caseStudyMd3.model.qa.Users;

import java.util.List;

public class UserService implements IUserService{
    private final UserDao usersDao = new UserDao();


    @Override
    public List<Users> getAll() {
        return null;
    }

    @Override
    public boolean add(Users users) {
        return usersDao.add(users);
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
    public String findPassByAccount(String account, String mail) {
        return usersDao.findPassByAccount(account, mail);
    }

    @Override
    public boolean updateByUser(String account, Users users) {
        return usersDao.updateByUser(account,users);
    }

    @Override
    public int findByUser(Users users) {
        return usersDao.findByUser(users);
    }
}
