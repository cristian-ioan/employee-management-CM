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

@WebServlet(value = "/editDepartment")
public class EditDepartmentServlet extends HttpServlet {

    private DepartmentDao departmentDao = new DepartmentDao();
    private DepartmentService departmentService = new DepartmentService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long departmentId = Long.parseLong(request.getParameter("idDep"));
        Department department = departmentService.findById(departmentId);
        department.setName(request.getParameter("departmentname"));

        departmentService.updateDepartment(department);

        if (department != null) {
            response.sendRedirect("departments.jsp");

        } else{
            response.sendRedirect("invalidDepartment.jsp"); //error page
        }
    }

}
