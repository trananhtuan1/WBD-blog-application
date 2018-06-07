<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2018
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <a href="/display">BACK</a>
</p>
<p>
    <c:forEach items='${requestScope["x1"]}' var="view">
        <tr>
            <td>Title</td>
            <td>${view.getTitle()}</td>
        </tr>
    </c:forEach>
</p>
</body>
</html>
