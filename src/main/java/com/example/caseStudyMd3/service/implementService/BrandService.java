package com.example.caseStudyMd3.service.implementService;

import com.example.caseStudyMd3.dao.implementDAO.BrandDAO;
import com.example.caseStudyMd3.dao.interfaceDAO.IBrandDAO;
import com.example.caseStudyMd3.model.Brand;
import com.example.caseStudyMd3.service.interfaceService.IBrandService;

import java.util.List;

public class BrandService implements IBrandService {
    private final IBrandDAO brandDAO = (IBrandDAO) new BrandDAO();
    public List<Brand> getAll() {
        return brandDAO.getAll();
    }

    @Override
    public boolean add(Object o) {
        return false;
    }

    @Override
    public boolean update(int id, Object o) {
        return false;
    }

    @Override
    public boolean add(Brand brand) {
        return brandDAO.add(brand);
    }

    @Override
    public boolean update(int id, Brand brand) {
        return brandDAO.update(id,brand);
    }

    @Override
    public boolean delete(int id) {
        return brandDAO.delete(id);
    }

    @Override
    public Brand findById(int id) {
        return (Brand) brandDAO.findById(id);
    }
}
