<%--
  Created by IntelliJ IDEA.
  User: ioanc
  Date: 23/02/2019
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit employee</title>
</head>
<body>

<form action="editEmployee" method="POST">

    <div class="editEmployess">
        <br><input type="text" placeholder="employee name" name="username">
        <br><input type="text" placeholder="job" name="job"><br><br>
        <%--<label>hire date: </label>--%>
        <%--<input type="date" name="hireDate"><br>--%>

        <%--<br>--%>
        <%--select a department:&nbsp;--%>
        <%--<select name="depid">--%>
            <%--<c:forEach var="department" items="${departmentService.findAll()}">--%>
                <%--<option value="${department.getId()}"> ${department.getName()}</option>--%>
            <%--</c:forEach>--%>
        <%--</select><br>--%>

        <%--<br>--%>
        <%--select a manager:&nbsp;--%>
        <%--<select name="empid">--%>
            <%--<c:forEach var="employee" items="${employeeService.findAll()}">--%>
                <%--<option value="${employee.getId()}"> ${employee.getName()}</option>--%>
            <%--</c:forEach>--%>
        <%--</select>--%>

        <br><input type="submit" value="Submit" name="submit"></br>
    </div>

</form>

</body>
</html>
