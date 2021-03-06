<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 23/02/2019
  Time: 11:20
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
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="header.jsp"/>

<body>
<h1 align="center">Employees page!</h1>
<table align="center" id="tblEmployee" border = "1" width = "75%" style="cursor: pointer;">
    <tr>
        <th>Emp ID</th>
        <th>Name</th>
        <th>Job</th>
        <th>Hire Date</th>
        <th>Department</th>
        <th>Manager</th>
        <th colspan="2">Edit/Delete</th>
    </tr>

    <c:forEach var = "row" items = "${employeeService.findAll()}">
        <tr>
            <td> <c:out value = "${row.getId()}"/></td>
            <td onclick="getIdEmployee(this)"> <c:out value = "${row.getName()}"/></td>
            <td> <c:out value = "${row.getJob()}"/></td>
            <td> <c:out value = "${row.getDate()}"/></td>
            <td> <c:out value = "${row.getDepartment().getName()}"/></td>
            <td> <c:out value = "${row.getManager().getName()}"/></td>
            <td>
                <form action="editEmployee.jsp">
                    <input type="text" hidden="true" name="idEmployee" value = "${row.getId()}"/>
                    <button type="submit" class="btn btn-primary btn-block btn-large">Edit</button>
                </form>
            </td>
            <td>
                <form action="delete" method="POST">
                    <input type="text" hidden="true" name="idEmp" value = "${row.getId()}"/>
                    <button type="submit" class="btn btn-primary btn-block btn-large">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<br>

<button id="add_button" onClick="window.location='addEmployee.jsp';" style="margin-left: 50%">Add Employee</button>

<script>

    function getIdEmployee(x) {
        var table = document.getElementById('tblEmployee');
        for(var i = 1; i < table.rows.length; i++) {
            table.rows[i].onclick = function() {
                var id_employee = this.cells[0].innerHTML;
                location.href="details_employee.jsp?value=" + id_employee;
            };
        }
    }

</script>

</body>
</html>