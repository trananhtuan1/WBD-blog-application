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
    <link href="/assets/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<c:import url="navbar.jsp"/>
<div class="container">
    <br>
    <h2>List Blog</h2>
    <br>
    <table class="table">
        <tr>
            <th>Title</th>
            <th>Content</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach items='${requestScope["x1"]}' var="view">
            <tr>
                <td><a href="/display?action=view&id=${view.getId()}">${view.getTitle()}</a></td>
                <td> ${view.getContent()}</td>
                <td><a href="/display?action=edit&id=${view.getId()}">Edit</a></td>
                <td><a href="/display?action=delete&id=${view.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
