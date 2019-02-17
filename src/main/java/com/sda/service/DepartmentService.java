package com.sda.service;

import com.sda.dao.DepartmentDao;
import com.sda.model.Department;

import java.util.List;

public class DepartmentService {

    private DepartmentDao departmentDao = new DepartmentDao();

    public Department findById(Long id){
        return departmentDao.getEntityById(Department.class, id);
    }

    public List<Department> findAll(){
        return departmentDao.findAll();
    }
}
