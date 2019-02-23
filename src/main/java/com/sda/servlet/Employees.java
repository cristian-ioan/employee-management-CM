package com.sda.servlet;

import com.sda.dao.EmployeeDao;
import com.sda.model.Department;
import com.sda.model.Employee;
import com.sda.service.DepartmentService;
import com.sda.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(value = "/employees")
public class Employees extends HttpServlet {

    private EmployeeDao employeeDao = new EmployeeDao();
    private EmployeeService employeeService = new EmployeeService();
    private DepartmentService departmentService = new DepartmentService();

    @Override
    protected void doGet(HttpServletRequest reqest, HttpServletResponse response)
            throws ServletException, IOException {
        Employee employee = employeeDao.getEntityById(Employee.class, 1L);
        response.getWriter().println("Hello World!");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Employee employee = new Employee();
        LocalDate localDate = LocalDate.parse(request.getParameter("hireDate"));
        Department department = departmentService.findById(Long.parseLong(request.getParameter("depid")));
        Employee manager = employeeService.findById(Long.parseLong(request.getParameter("empid")));

        employee.setName(request.getParameter("username"));
        employee.setJob(request.getParameter("job"));
        employee.setDate(localDate);
        employee.setDepartment(department);
        employee.setManager(manager);

        employeeService.createEmployee(employee);

        if (employee != null) {
            response.sendRedirect("employees.jsp");

        } else
            response.sendRedirect("invalidEmployee.jsp"); //error page

    }

}
