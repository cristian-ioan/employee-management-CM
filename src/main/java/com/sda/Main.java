package com.sda;

import com.sda.dao.EmployeeDao;
import com.sda.dao.UserDao;
import com.sda.model.Employee;
import com.sda.model.User;

public class Main {

    public static void main(String[] args) {
        User user = new User("admin", "admin");
        UserDao userDao = new UserDao();
        userDao.createEntity(user);
        Employee employee = new Employee();
        employee.setName("Cosmin C");
          EmployeeDao employeeDao = new EmployeeDao();
//          Employee employee = employeeDao.getEntityById(Employee.class, 1L);
        System.out.println(employee.getName());
        employeeDao.createEntity(employee);
    }
}
