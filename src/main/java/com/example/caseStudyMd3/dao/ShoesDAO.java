package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.config.ConnectionDB;
import com.example.caseStudyMd3.dao.interfaceDAO.IProductDAO;
import com.example.caseStudyMd3.model.productShoes.Shoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShoesDAO implements IProductDAO<Shoes> {
    public static final String SEARCH_BY_NAME = "SELECT * FROM product2 WHERE name LIKE ?;";
    public static final String SELECT_BY_ID = "SELECT * FROM product2 WHERE id=?;";
    Connection connection = ConnectionDB.getConnect();
    public static final String SELECT_ALL_SHOES = "SELECT * FROM product2;";

    @Override
    public List<Shoes> selectAll() {
        List<Shoes> listShoes = new ArrayList<>();
        try (PreparedStatement statement = connection.prepareStatement(SELECT_ALL_SHOES);) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int categoryId = resultSet.getInt("categoryId");
                int branhdId = resultSet.getInt("brandId");
                String name = resultSet.getString("name");
                String oldPrice = resultSet.getString("oldPrice");
                String newPrice = resultSet.getString("newPrice");
                String image = resultSet.getString("image");
                Shoes shoes = new Shoes(id, categoryId, branhdId, name, oldPrice, newPrice, image);
                listShoes.add(shoes);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listShoes;

    }


    @Override
    public void create(Shoes o) {
        try ( PreparedStatement statement = connection.prepareStatement(
                        "  INSERT INTO product2 (categoryId,brandId,image,name,oldPrice,newPrice) VALUES (?,?,?,?,?,?);");
        ) {
            statement.setInt(1, o.getCategoryId());
            statement.setInt(2, o.getBrandId());
            statement.setString(3, o.getImage());
            statement.setString(4, o.getName());
            statement.setString(5, o.getOldPrice());
            statement.setString(6, o.getNewPrice());
            statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public Shoes select(int id_num) {
        Shoes shoes = null;
        try (PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID);) {
            statement.setInt(1, id_num);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int categoryId = resultSet.getInt("categoryId");
                int branhdId = resultSet.getInt("brandId");
                String name = resultSet.getString("name");
                String oldPrice = resultSet.getString("oldPrice");
                String newPrice = resultSet.getString("newPrice");
                String image = resultSet.getString("image");
                shoes = new Shoes(id, categoryId, branhdId, name, oldPrice, newPrice, image);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return shoes;
    }

    @Override
    public void update(Shoes o) {
        try(PreparedStatement statement =connection.prepareStatement("UPDATE product2 SET categoryId = ?,brandId=?,image=?,name= ?, oldPrice=?, newPrice= ? WHERE id=?;")){
           statement.setInt(1,o.getCategoryId());
           statement.setInt(2,o.getBrandId());
            statement.setString(3,o.getImage());
           statement.setString(4,o.getName());
           statement.setString(5,o.getOldPrice());
           statement.setString(6,o.getNewPrice());
            statement.setInt(7,o.getId());
           statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    @Override
    public void delete(int id) {
        try( PreparedStatement statement = connection.prepareStatement("DELETE FROM product2 WHERE id =?;")){
            statement.setInt(1,id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Shoes> search(String search) {
        List<Shoes> listShoes = new ArrayList<>();
        try (
                PreparedStatement statement = connection.prepareStatement(" " + SEARCH_BY_NAME);) {
            statement.setString(1, "%" + search + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int categoryId = resultSet.getInt("categoryId");
                int branhdId = resultSet.getInt("brandId");
                String name = resultSet.getString("name");
                String oldPrice = resultSet.getString("oldPrice");
                String newPrice = resultSet.getString("newPrice");
                String image = resultSet.getString("image");
                Shoes shoes = new Shoes(id, categoryId, branhdId, name, oldPrice, newPrice, image);
                listShoes.add(shoes);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listShoes;
    }

    @Override
    public Shoes findById(int id) {
        return null;
    }

    @Override
    public List<Shoes> sortByPrice(String str) {
        List<Shoes> listShoes = new ArrayList<>();
        if("ASC".equals(str)) {
            try (

                    PreparedStatement statement = connection.prepareStatement("SELECT * FROM product order by newPrice ASC ;");){
                ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    int categoryId = resultSet.getInt("categoryId");
                    int branhdId = resultSet.getInt("brandId");
                    String name = resultSet.getString("name");
                    String oldPrice = resultSet.getString("oldPrice");
                    String newPrice = resultSet.getString("newPrice");
                    String image = resultSet.getString("image");
                    Shoes shoes = new Shoes(id, categoryId, branhdId, name, oldPrice, newPrice, image);
                    listShoes.add(shoes);
                }
            } catch(SQLException e){
                e.printStackTrace();
            }

            return listShoes;
        }
        if("DESC".equals(str)) {
            try (

                    PreparedStatement statement = connection.prepareStatement("SELECT * FROM product order by newPrice DESC ;");){
                ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    int categoryId = resultSet.getInt("categoryId");
                    int branhdId = resultSet.getInt("brandId");
                    String name = resultSet.getString("name");
                    String oldPrice = resultSet.getString("oldPrice");
                    String newPrice = resultSet.getString("newPrice");
                    String image = resultSet.getString("image");
                    Shoes shoes = new Shoes(id, categoryId, branhdId, name, oldPrice, newPrice, image);
                    listShoes.add(shoes);
                }
            } catch(SQLException e){
                e.printStackTrace();
            }

            return listShoes;
        }
       return listShoes;
    }
}
