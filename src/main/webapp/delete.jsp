<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2018
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="assets/css/bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body>
<c:import url="navbar.jsp"/>
<div class="container">
    <form method="post">
        <br>
        <legend><h2>Are you sure you want to delete the blog?</h2></legend>
        <div class="form-group">
            <Strong>Title</Strong>
            <br>
            ${requestScope["delete"].getTitle()}
        </div>
        <div class="form-group">
            <Strong>Content</Strong>
            <br>
            ${requestScope["delete"].getContent()}
        </div>
        <div>
            <input type="submit" value="Delete">
        </div>
    </form>
</div>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
