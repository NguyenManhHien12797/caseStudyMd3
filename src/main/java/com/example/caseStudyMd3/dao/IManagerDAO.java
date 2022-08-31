package com.example.caseStudyMd3.dao;

import java.sql.SQLException;
import java.util.List;

public interface IManagerDAO<E> {
    List<E> selectAll() throws SQLException, ClassNotFoundException;

    void create(E e);

    E select(int id);

    void update(int id, E e);

    void delete(int id) throws SQLException;

    List<E> search(String search);
}
