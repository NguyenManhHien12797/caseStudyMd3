package com.example.caseStudyMd3.service.interfaceService;

import com.example.caseStudyMd3.model.Product;
import com.example.caseStudyMd3.service.IGeneralService;

import java.util.List;

public interface IProductService extends IGeneralService {
    @Override
    default boolean update(int id, Product product) {
        return false;
    }
    @Override
    default boolean add(Product product){
        return false;
    };
    List<Product> findByKeyword(String keyword);
    boolean add(Product product, int idCategory, int idBrand);
    boolean update(int id, Product product,int categoryID, int brandID);
    List<Product> filter(String categoryName,double priceLow, double priceHigh, String brandName);
    @Override
    boolean delete(int id);

    @Override
    List<Product> getAll();

    @Override
    Product findById(int id);
    boolean reduce(int quantity, int idProduct);
}
