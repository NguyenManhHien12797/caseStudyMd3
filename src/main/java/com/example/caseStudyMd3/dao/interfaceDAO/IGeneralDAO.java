package com.example.caseStudyMd3.dao.interfaceDAO;

import java.util.List;

public interface IGeneralDAO<T> {
    List<T> getAll();

    boolean add(T t);

    boolean update(int id, T t);

    boolean delete(int id);

    T findById(int id);
}