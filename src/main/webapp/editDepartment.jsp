<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 26/02/2019
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.sda.model.Department" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="departmentService" class="com.sda.service.DepartmentService"></jsp:useBean>

<html>
<head>
    <title>Edit Department</title>
</head>
<body>
<h1 align="center">Edit Department:</h1>

<%
    Long int_id_department = Long.valueOf(request.getParameter("idDepartment"));
    String name_department = null;

    for (Department department : departmentService.findAll()) {
        if(department.getId() == int_id_department){
            name_department = department.getName();
        }
    }
%>

<table align="center" id="tblEditDepartment" border = "1" width = "15%" style="cursor: pointer;">

    <form action="editDepartment" method="POST">

        <div class="editdepartment">

            <input type="text" name="idDep" value="<%= int_id_department%>" hidden="hidden">

            <tr>
                <td>Name:</td>
                <td><input type="text" name="departmentname" value="<%= name_department%>"></td>
            </tr>

            <br><input type="submit" value="Submit" name="submit" style="margin-left: 54%"></br>

        </div>

    </form>

</table>

</body>
</html>
