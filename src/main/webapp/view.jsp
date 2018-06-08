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
    <link href="assets/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>Title</title>
</head>
<body>
<c:import url="navbar.jsp"/>
<div class="container">
    <form method="post">
        <p>
            <legend><h1>Blog Details</h1></legend>
        <div class="form-group">
            <strong>Title</strong>
            <br>
            ${requestScope["view"].getTitle()}
        </div>
        <div class="form-group">
            <strong>Content</strong>
            <br>
            ${requestScope["view"].getContent()}
        </div>
        </p>
    </form>
</div>
<script src="/assets/js/bootstrap.min.js"></script>
</body>
</html>
