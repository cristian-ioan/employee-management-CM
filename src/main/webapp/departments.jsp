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
</head>
<jsp:include page="header.jsp"/>

<body>
<h1>Departments page!</h1>
<table border = "1" width = "15%">
    <tr>
        <th>Department ID</th>
        <th>Name</th>
    </tr>

    <c:forEach var = "row" items = "${departmentService.findAll()}">
        <tr>
            <td> <c:out value = "${row.getId()}"/></td>
            <td> <c:out value = "${row.getName()}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
