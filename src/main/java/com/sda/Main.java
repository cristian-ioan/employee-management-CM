package com.sda;

import com.sda.dao.EmployeeDao;
import com.sda.dao.UserDao;
import com.sda.model.Department;
import com.sda.model.Employee;
import com.sda.model.User;
import com.sda.service.EmployeeService;

import java.time.LocalDate;
import java.util.List;

public class Main {

    public static void main(String[] args) {
//        User user = new User("admin", "admin");
//        UserDao userDao = new UserDao();
//        userDao.createEntity(user);

//        Employee employee = new Employee();
//        employee.setName("Bogdanel");
//        employee.setDepartment(new Department(1L));
//        employee.setManager(8L);
//        employee.setDate(LocalDate.of(2013, 07, 15));
//        employee.setJob("senior IT");
//        EmployeeDao employeeDao = new EmployeeDao();
////          Employee employee = employeeDao.getEntityById(Employee.class, 1L);
////        Employee employee = employeeDao.getEntityById(Employee.class, 1L);
////        System.out.println(employee.getName());
//        employeeDao.createEntity(employee);

        EmployeeService employeeService = new EmployeeService();
        List<Employee> list = employeeService.findAll();
        for(Employee employee: list){
            System.out.print(employee.getName() + ", ");
        }

    }
}
