//package com.example.caseStudyMd3.dao;
//
//import com.example.caseStudyMd3.config.ConnectionDB;
//import com.example.caseStudyMd3.model.Product;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//public class SearchDAO {
//    Connection  conn = null;
//    PreparedStatement ps = null;
//    ResultSet rs = null;
//
//    public List<Product> searchByName (String txtSearch) {
//        List<Product> list = new ArrayList<>();
//        String query = "select * from Product\n"
//                + "where [name] like ?";
//        try{
//            conn = new ConnectionDB();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,"%" +txtSearch+ "%");
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getInt(1),
//                rs.getString(2),
//                rs.getString(3),
//                rs.getDouble(4),
//                rs.getDouble(5)));
//
//            }
//
//        }catch (Exception e) {
//
//        }
//        return list;
//    }
//}
