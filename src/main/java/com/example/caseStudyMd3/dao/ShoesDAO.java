package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.config.ConnectionDB;
import com.example.caseStudyMd3.model.productShoes.Shoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShoesDAO implements IManagerDAO {
    public static final String SEARCH_BY_NAME = "SELECT * FROM product WHERE name LIKE ?;";
    Connection connection = ConnectionDB.getConnect();
    public static final String SELECT_ALL_SHOES = "SELECT * FROM product;";
    @Override
    public List<Shoes> selectAll() {
        List<Shoes> listShoes = new ArrayList<>();
        try (PreparedStatement statement = connection.prepareStatement(SELECT_ALL_SHOES);){
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                int categoryId = resultSet.getInt("categoryId");
                int branhdId = resultSet.getInt("brandId");
                String name = resultSet.getString("name");
                String oldPrice = resultSet.getString("oldPrice");
                String newPrice = resultSet.getString("newPrice");
                String image = resultSet.getString("image");
                Shoes shoes = new Shoes(id,categoryId,branhdId,name,oldPrice,newPrice,image);
                listShoes.add(shoes);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listShoes;

    }

    @Override
    public void create(Object o) {

    }

    @Override
    public Object select(int id) {
        return null;
    }

    @Override
    public void update(int id, Object o) {

    }

    @Override
    public void delete(int id) throws SQLException {

    }

    @Override
    public List<Shoes> search(String search) {
        List<Shoes> listShoes = new ArrayList<>();
        try (
                PreparedStatement statement = connection.prepareStatement(" " + SEARCH_BY_NAME);) {
            statement.setString(1,"%"+search+"%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int categoryId = resultSet.getInt("categoryId");
                int branhdId = resultSet.getInt("brandId");
                String name = resultSet.getString("name");
                String oldPrice = resultSet.getString("oldPrice");
                String newPrice = resultSet.getString("newPrice");
                String image = resultSet.getString("image");
                Shoes shoes = new Shoes(id,categoryId,branhdId,name,oldPrice,newPrice,image);
                listShoes.add(shoes);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listShoes;
    }
}
