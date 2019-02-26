<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 26/02/2019
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="departmentService" class="com.sda.service.DepartmentService"></jsp:useBean>
<html>
<head>
    <title>Add Department</title>
</head>
<jsp:include page="header.jsp"/>

<body>

<form action="departments" method="POST">

    <div class="adddepartments">
        <br><input type="text" placeholder="deparment name" name="departmentname">
        <br><input type="submit" value="Submit" name="submit"></br>
    </div>

</form>

</body>
</html>
