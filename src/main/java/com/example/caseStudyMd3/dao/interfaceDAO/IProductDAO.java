
package com.example.caseStudyMd3.dao.interfaceDAO;


import com.example.caseStudyMd3.dao.IManagerDAO;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO<E> extends IManagerDAO<E> {
    @Override
    List<E> selectAll() throws SQLException, ClassNotFoundException;

    @Override
    void create(E o);

    @Override
    E select(int id_num);

    @Override
    void update( E o);

    @Override
    List<E> search(String search);

    @Override
    void delete(int id);

    E findById(int id);
    List<E> sortByPrice(String str);
}