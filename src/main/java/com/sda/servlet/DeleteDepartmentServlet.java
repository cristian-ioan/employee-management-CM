package com.sda.servlet;

import com.sda.model.Department;
import com.sda.service.DepartmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/deleteDepartment")
public class DeleteDepartmentServlet extends HttpServlet {

    private DepartmentService departmentService = new DepartmentService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long departmentId = Long.valueOf(request.getParameter("idDep"));
        Department department = departmentService.findById(departmentId);
        departmentService.deleteDepartment(department);
        response.sendRedirect("departments.jsp");
    }

}
