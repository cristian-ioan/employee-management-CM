<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 23/02/2019
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.sda.model.Employee" %>
<%@ page import="java.time.LocalDate" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="employeeService" class="com.sda.service.EmployeeService"></jsp:useBean>
<jsp:useBean id="departmentService" class="com.sda.service.DepartmentService"></jsp:useBean>

<html>
<head>
    <title>Edit employee</title>
</head>

<body>
<h1 align="center">Edit employee:</h1>

<%
    Long int_id_employee = Long.valueOf(request.getParameter("idEmployee"));
    String name_employee = null;
    String job_employee = null;
    LocalDate hire_date_employee = null;
    String dep_employee = null;
    String manag_employee = null;

    for (Employee employee : employeeService.findAll()) {
        if(employee.getId() == int_id_employee){
            name_employee = employee.getName();
            job_employee = employee.getJob();
            hire_date_employee = employee.getDate();
            dep_employee = employee.getDepartment().getName();
            manag_employee=employee.getManager().getName();
        }
    }
%>


<table align="center" id="tblEditEmployee" border = "1" width = "15%" style="cursor: pointer;">

<form action="edit" method="POST">

    <div class="editemployee">

        <input type="text" name="idEmp" value="<%= int_id_employee%>" hidden="hidden">

        <tr>
            <td>Name:</td>
            <td><input type="text" name="username" value="<%= name_employee%>"></td>
        </tr>

        <tr>
            <td>Job:</td>
            <td><input type="text" name="job" value="<%= job_employee%>"></td>
        </tr>

        <tr>
            <td>Hire date:</td>
            <td><input type="date" name="hireDate" value="<%= hire_date_employee%>"></td>
        </tr>

        <tr>
            <td>Department:</td>
            <td><%= dep_employee%>
                <select name="depid">
                    <c:forEach var="department" items="${departmentService.findAll()}">
                        <option value="${department.getId()}"> ${department.getName()}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <tr>
            <td>Manager:</td>
            <td><%= manag_employee%>
                <select name="empid">
                    <c:forEach var="employee" items="${employeeService.findAll()}">
                        <option value="${employee.getId()}"> ${employee.getName()}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <br><input type="submit" value="Submit" name="submit" style="margin-left: 55%"></br>

    </div>

</form>

</table>

</body>
</html>
