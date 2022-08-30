package com.example.caseStudyMd3.dao.interfaceDAO;

import com.example.caseStudyMd3.dao.IGeneralDAO;
import com.mysql.cj.x.protobuf.MysqlxCrud;

import java.util.List;

public interface IOrderDAO extends IGeneralDAO<MysqlxCrud.Order> {
    default boolean add(MysqlxCrud.Order order){
        return false;
    }
    boolean add(MysqlxCrud.Order order, int idUser);
}