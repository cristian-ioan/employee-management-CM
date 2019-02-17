package com.sda.dao;

import com.sda.model.Employee;
import com.sda.model.User;
import com.sda.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.Query;
import java.util.List;

public class EmployeeDao extends GenericDao<Employee> {

    public List<Employee> findAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createQuery("FROM com.sda.model.Employee ");

        List<Employee> list = query.getResultList();

        transaction.commit();
        session.close();
        return list;
    }


}
