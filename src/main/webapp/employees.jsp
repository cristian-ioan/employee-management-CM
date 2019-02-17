<%--
  Created by IntelliJ IDEA.
  User: NicolaeA
  Date: 16.02.2019
  Time: 02:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="employeeService" class="com.sda.service.EmployeeService"></jsp:useBean>
<jsp:useBean id="userService" class="com.sda.service.UserService"></jsp:useBean>

<html>
<head>
    <title>Employees</title>
</head>
<jsp:include page="header.jsp"/>

<body>
<h1>Employees page!</h1>
<table border = "1" width = "100%">
    <tr>
        <th>Emp ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Manager</th>
    </tr>

    <c:forEach var = "row" items = "${employeeService.findAll()}">
        <tr>
            <td> <c:out value = "${row.getId()}"/></td>
            <td> <c:out value = "${row.getName()}"/></td>
            <td> <c:out value = "${row.getDepartment().getName()}"/></td>
            <%--<td> <c:out value = "${row.manager}"/></td>--%>
        </tr>
    </c:forEach>
</table>
<%--<span><c:forEach items="${employeeService.findAll()}" var="employee">--%>
    <%--<c:out value="${employee.id}"></c:out>--%>
<%--</c:forEach></span>--%>

<%--<c:forEach items="${employeeService.findById(1)}" var="employee">--%>
    <%--<span><c:out value="${employee.getName()}"/></span>--%>
<%--</c:forEach>--%>
<%--<c:forEach items="${userService.findById(1)}" var="user">--%>
    <%--<span><c:out value="${employee.getUsername()}"/></span>--%>
<%--</c:forEach>--%>
</body>
</html>