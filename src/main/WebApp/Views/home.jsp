<%--
  Created by IntelliJ IDEA.
  User: harishsekar
  Date: 1/12/18
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Login</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2> User Login </h2>
    </div>
</div>

<div id = "container">
    <div id="content">
        <table>
            <tr>
                <th>Id</th>
                <th>UserIdName</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
            <c:forEach var="tempUser" items="${userList}">
                <tr>
                    <td>${tempUser.id}</td>
                    <td>${tempUser.loginId}</td>
                    <td>${tempUser.firstName}</td>
                    <td>${tempUser.emailId}</td>

                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
