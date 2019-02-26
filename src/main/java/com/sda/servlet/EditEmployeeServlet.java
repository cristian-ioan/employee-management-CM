package com.sda.servlet;

import com.sda.dao.EmployeeDao;
import com.sda.model.Department;
import com.sda.model.Employee;
import com.sda.service.DepartmentService;
import com.sda.service.EmployeeService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(value = "/edit")
public class EditEmployeeServlet extends HttpServlet {

    private EmployeeDao employeeDao = new EmployeeDao();
    private EmployeeService employeeService = new EmployeeService();
    private DepartmentService departmentService = new DepartmentService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long employeeId = Long.parseLong(request.getParameter("idEmp"));
        Employee employee = employeeService.findById(employeeId);
        employee.setName(request.getParameter("username"));
        employee.setJob(request.getParameter("job"));
        LocalDate localDate = LocalDate.parse(request.getParameter("hireDate"));
        employee.setDate(localDate);
        Department department = departmentService.findById(Long.parseLong(request.getParameter("depid")));
        employee.setDepartment(department);
        Employee manager = employeeService.findById(Long.parseLong(request.getParameter("empid")));
        employee.setManager(manager);

        employeeService.updateEmployee(employee);

        if (employee != null) {
            response.sendRedirect("employees.jsp");

        } else{
            response.sendRedirect("invalidEmployee.jsp"); //error page
        }
    }

}
