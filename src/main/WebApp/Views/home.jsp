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

</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2> Home Screen </h2>
    </div>
</div>

<div id = "container">
    <div id="content">
        <form>

            <input type="text" name="userID" placeholder="user ID"><br>

            <input type="password" name="password" placeholder="password">
        </form>
        <input type="button" value="login" onclick="window.location.href='userlist'; return false ;" class="add-button">
        <input type="button" value="SignUp" onclick="window.location.href='adduser'; return false ;" class="add-button">
    </div>
</div>
</body>
</html>
