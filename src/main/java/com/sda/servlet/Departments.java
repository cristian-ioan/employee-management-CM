package com.sda.servlet;

import com.sda.dao.DepartmentDao;
import com.sda.model.Department;
import com.sda.service.DepartmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/departments")
public class Departments extends HttpServlet {

    private DepartmentDao departmentDao = new DepartmentDao();
    private DepartmentService departmentService = new DepartmentService();

    @Override
    protected void doGet(HttpServletRequest reqest, HttpServletResponse response)
            throws ServletException, IOException {
        Department department = departmentDao.getEntityById(Department.class, 1L);
        response.getWriter().println("Hello World!");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Department department = new Department();
        department.setName(request.getParameter("departmentname"));

        departmentService.createDepartment(department);

        if (department != null) {
            response.sendRedirect("departments.jsp");

        } else
            response.sendRedirect("invalidDepartment.jsp"); //error page

    }

}
