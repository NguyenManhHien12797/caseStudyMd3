package com.example.caseStudyMd3.dao.implementDAO;

import com.example.caseStudyMd3.dao.interfaceDAO.IProductDAO;
import com.example.caseStudyMd3.model.Product;

import java.util.List;


public class ProductDAO implements IProductDAO {

    @Override
    public List<Product> findByKeyword(String keyword) {
        return null;
    }

    @Override
    public boolean add(Product product, int idCategory, int idBrand) {
        return false;
    }

    @Override
    public boolean update(int id, Product product, int categoryID, int brandID) {
        return false;
    }

    @Override
    public List<Product> filter(String categoryName, double priceLow, double priceHigh, String brandName) {
        return null;
    }

    @Override
    public List<Product> getAll() {
        return null;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public boolean reduce(int quantity, int idProduct) {
        return false;
    }
}
