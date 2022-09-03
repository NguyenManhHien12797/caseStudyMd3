package com.example.caseStudyMd3.dao;

import java.sql.SQLException;
import java.util.List;

public interface IManagerDAO<E> {
    List<E> selectAll() throws SQLException, ClassNotFoundException;

    void create(E e);

    E select(int idg_num);

   void update(int id, E e);


    List<E> search(String search);




    boolean delete(int id);

}
