
package com.example.caseStudyMd3.dao.interfaceDAO;


import com.example.caseStudyMd3.dao.IManagerDAO;
import com.example.caseStudyMd3.model.Product;

import java.util.List;

public interface IProductDAO extends IManagerDAO<Product> {

    Product findById(int id);
}