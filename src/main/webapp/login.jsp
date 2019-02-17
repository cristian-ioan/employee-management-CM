<%--
  Created by IntelliJ IDEA.
  User: NicolaeA
  Date: 16.02.2019
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
    <title>Login Page</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <style>
        body {
            background-image: url("/images/login.jpg");
            background-repeat: no-repeat;
        }
    </style>
</head>

<body>
<form action="login" method="post">

    <div class="login">
        <input type="text" placeholder="user name" name="un"><br>
        <input type="password" placeholder="password" name="pw"/>
        <input type="submit" value="Sign In">
    </div>
    <div class="shadow"></div>

</form>
</body>
</html>