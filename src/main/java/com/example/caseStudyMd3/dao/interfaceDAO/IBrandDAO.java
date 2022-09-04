package com.example.caseStudyMd3.dao.interfaceDAO;

import com.example.caseStudyMd3.dao.IManagerDAO;
import com.example.caseStudyMd3.model.Brand;

public interface IBrandDAO extends IManagerDAO {
    boolean add(Brand brand);

    boolean update(int id, Brand brand);

    Brand findById(int id);
}
