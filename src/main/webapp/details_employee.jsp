<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 17/02/2019
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.sda.model.Employee" %>
<%@ page import="com.sda.service.EmployeeService" %>
<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Details for employee</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>

<body>

<%
    int int_id_employee = Integer.valueOf(request.getParameter("value").trim());
    String name_employee = null;
    String job_employee = null;
    LocalDate hire_date_employee = null;
    String department_employee = null;
    EmployeeService employeeService = new EmployeeService();
    for (Employee employee : employeeService.findAll()) {
        if(employee.getId() == int_id_employee){
            name_employee = employee.getName();
            job_employee = employee.getJob();
            hire_date_employee = employee.getDate();
            department_employee = employee.getDepartment().getName();
        }
    }
%>

<h1>Details of employee:</h1>
<table id="tblDetailEmployee" border = "1" width = "20%" style="cursor: pointer;">
    <tr>
        <td>Emp ID</td>
        <td><%= int_id_employee%></td>
    </tr>

    <tr>
        <td>Name</td>
        <td><%= name_employee%></td>
    </tr>
    <tr>
        <td>Job</td>
        <td><%= job_employee%></td>
    </tr>
    <tr>
        <td>Hire Date</td>
        <td><%= hire_date_employee%></td>
    </tr>
    <tr>
        <td>Department</td>
        <td><%= department_employee%></td>
    </tr>

</table>

<br>
<form>
    <input type="button" value="Back!" onclick="history.back()">
</form>

</body>
</html>
