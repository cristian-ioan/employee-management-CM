<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 17/02/2019
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="employeeService" class="com.sda.service.EmployeeService"></jsp:useBean>
<jsp:useBean id="userService" class="com.sda.service.UserService"></jsp:useBean>
<jsp:useBean id="departmentService" class="com.sda.service.DepartmentService"></jsp:useBean>

<html>
<head>
    <title>Departments</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="header.jsp"/>

<body>
<h1 align="center">Departments page!</h1>
<table align="center" border = "1" width = "30%">
    <tr>
        <th>Department ID</th>
        <th>Name</th>
        <th colspan="2">Edit/Delete</th>
    </tr>

    <c:forEach var = "row" items = "${departmentService.findAll()}">
        <tr>
            <td> <c:out value = "${row.getId()}"/></td>
            <td> <c:out value = "${row.getName()}"/></td>
            <td>
                <form action="editDepartment.jsp">
                    <input type="text" hidden="true" name="idDepartment" value = "${row.getId()}"/>
                    <button type="submit" class="btn btn-primary btn-block btn-large">Edit</button>
                </form>
            </td>
            <td>
                <form action="deleteDepartment" method="POST">
                    <input type="text" hidden="true" name="idDep" value = "${row.getId()}"/>
                    <button type="submit" class="btn btn-primary btn-block btn-large">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<button id="add_button" onClick="window.location='addDepartment.jsp';" style="margin-left: 46%">Add Department</button>
</body>
</html>
