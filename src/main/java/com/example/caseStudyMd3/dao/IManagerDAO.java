package com.example.caseStudyMd3.dao;

import com.example.caseStudyMd3.model.productShoes.Shoes;

import java.sql.SQLException;
import java.util.List;

public interface IManagerDAO<E> {
    List<E> selectAll() throws SQLException, ClassNotFoundException;

    void create(E e);

    E select(int id_num);

   void update(E e);


    List<E> search(String search);




    void delete(int id);

}
