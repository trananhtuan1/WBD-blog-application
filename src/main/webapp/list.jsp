<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2018
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <a href="index.jsp">Back home</a>

</p>
<p>
    <a href="/display?action=create">Create Blog</a>
</p>
<p>

    <c:forEach items='${requestScope["x1"]}' var="view">
        <strong>Title</strong> <br>
        <a href="/display?action=title&id=${view.getId()}">${view.getTitle()}</a>
        <br>
        <strong>Content</strong> <br>
        ${view.getContent()}
        <br>
        <a href="/display?action=edit&id=${view.getId()}">Edit</a>
        &nbsp
        <a href="/display?action=delete&id=${view.getId()}">Delete</a>
        <br>
        <br>
    </c:forEach>
    </table>
</p>
</body>
</html>
