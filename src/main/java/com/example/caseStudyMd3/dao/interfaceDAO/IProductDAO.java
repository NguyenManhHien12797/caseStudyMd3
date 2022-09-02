//package com.example.caseStudyMd3.dao.interfaceDAO;
//
//import com.example.caseStudyMd3.model.Product;
//
//import java.util.List;
//
//public interface IProductDAO extends IGeneralDAO<Product> {
//    List<Product> findByKeyword(String keyword);
//
//    @Override
//    default boolean update(int id, Product product) {
//        return false;
//    }
//
//    @Override
//    default boolean add(Product product){
//        return false;
//    };
//
//    boolean add(Product product, int idCategory, int idBrand);
//    boolean update(int id, Product product,int categoryID, int brandID);
//    List<Product> filter(String categoryName,double priceLow, double priceHigh, String brandName);
//
//    @Override
//    List<Product> getAll();
//
//    @Override
//    boolean delete(int id);
//
//    @Override
//    Product findById(int id);
//
//    boolean reduce(int quantity, int idProduct);
//}