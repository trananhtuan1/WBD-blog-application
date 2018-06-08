<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2018
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <link href="/assets/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>Title</title>
</head>
<body>
<c:import url="navbar.jsp"/>
<div class="container">
    <p>
        <c:if test='${requestScope["message"]!=null}'>
            <span class="test">${requestScope["message"]}</span>
        </c:if>
    </p>
    <form method="post" class="form">
        <legend><h2>Create Blog</h2></legend>
        <div class="form-group">
            <label>Title</label>
            <input class="form-control" type="text" name="title" id="title">
        </div>
        <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" name="content" cols="22" rows="10" required="required"></textarea>
        </div>
        <div>
            <input type="submit" value="Create" class="btn-primary">
        </div>
    </form>
</div>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
