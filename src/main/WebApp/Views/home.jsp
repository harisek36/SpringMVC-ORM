<%--
  Created by IntelliJ IDEA.
  User: harishsekar
  Date: 1/12/18
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
    <div id="content">
        <form:form action="checkUser"  method="POST">
            <table>

                <tr>
                    <td><label>Login ID</label></td>
                    <td> <input type="text"  name="login_id" /></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td> <input type="password" name="pass_word"/></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Login"  class="save "/>
                    </td>
                </tr>
            </table>
        </form:form>
        <input type="button" value="SignUp" onclick="window.location.href='adduser'; return false ;" class="add-button">
    </div>
</div>
</body>
</html>
