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
    <form:form action="checkUser" onsubmit="validateForm()"  modelAttribute="checkUser" method="POST">
        <table>

            <tr>
                <td><label>Login ID</label></td>
                <td> <form:input id="homeLogin" path="loginId" type="text"/></td>
            </tr>

            <tr>
                <td><label>Password</label></td>
                <td> <form:input id="homePassword" path="password" type="password" /></td>
            </tr>

            <tr>

                <td> <form:input type = "hidden" path="firstName" /></td>
            </tr>

            <tr>
                <td> <form:input type = "hidden" path="emailId" /></td>
            </tr>

            <tr>
                <td>
                    <input type="submit"  value="Login"  class="save ">
                </td>
            </tr>

        </table>
    </form:form>
        <input type="button" value="SignUp" onclick="window.location.href='adduser'; return false ;" class="add-button">
</div>

<script>
    function validateForm() {
        var x = document.getElementById("homeLogin");
        if (x == "") {
            alert("Login Must must be filled out");
            return false;
        }
    }
</script>
</body>
</html>
