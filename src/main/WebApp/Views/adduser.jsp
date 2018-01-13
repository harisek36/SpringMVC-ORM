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
    <title>Add User</title>
    <link href="<c:url value="/Resources/CSS/style.css" />" rel="stylesheet">
    <link href="<c:url value="/Resources/CSS/add-user-style.css" />" rel="stylesheet">


</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2> Add New User </h2>
    </div>
</div>

<div id = "container">
    <h3 >Save User</h3>
    <form:form action="saveUser" modelAttribute="newUser" method="POST">
        <table>

            <tr>
                <td><label>Name</label></td>
                <td> <form:input path="firstName" /></td>
            </tr>
            <tr>
                <td><label>Email ID</label></td>
                <td> <form:input path="emailId" /></td>
            </tr>
             <tr>
                <td><label>Login ID</label></td>
                <td> <form:input path="loginId" /></td>
             </tr>
             <tr>
                <td><label>Password</label></td>
                <td> <form:input path="password" /></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Save User"  class="save ">
                </td>
            </tr>

        </table>
    </form:form>
    <input type="submit" value="Home" onclick="window.location.href='home'; return false ;" class="save ">

</div>
</div>
</body>
</html>
