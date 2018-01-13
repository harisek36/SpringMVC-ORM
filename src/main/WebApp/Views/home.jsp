<%--
  Created by IntelliJ IDEA.
  User: harishsekar
  Date: 1/12/18
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/Resources/CSS/style.css" />" rel="stylesheet">
    <link href="<c:url value="/Resources/CSS/add-user-style.css" />" rel="stylesheet">


</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2> Home Screen </h2>
    </div>
</div>

<div id = "container">
    <form:form action="checkUser"  modelAttribute="checkUser" method="POST">
        <table>

            <tr>
                <td><label>Login ID</label></td>
                <td> <form:input path="loginId" /></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td> <form:input path="password" /></td>
            </tr>
            <tr>

                <td> <form:input type = "hidden" path="firstName" /></td>
            </tr>
            <tr>
                <td> <form:input type = "hidden" path="emailId" /></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Login"  class="save ">
                </td>
            </tr>

        </table>
    </form:form>
        <input type="button" value="SignUp" onclick="window.location.href='adduser'; return false ;" class="add-button">
</div>
</body>
</html>
