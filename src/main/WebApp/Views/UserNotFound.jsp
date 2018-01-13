<%--
  Created by IntelliJ IDEA.
  User: harishsekar
  Date: 1/13/18
  Time: 2:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><html>
<head>
    <title>Title</title>
    <link href="<c:url value="/Resources/CSS/style.css" />" rel="stylesheet">
    <link href="<c:url value="/Resources/CSS/add-user-style.css" />" rel="stylesheet">
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2> User Not Found</h2>
    </div>

    <input type="submit" value="Home" onclick="window.location.href='home'; return false ;" class="save ">
</div>
</body>
</html>
