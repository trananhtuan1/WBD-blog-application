<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/6/2018
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/assets/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<c:import url="navbar.jsp"/>
<div class="container">
    <p>
        <c:if test='${requestScope["message"]!=null}'>
            <span class="test">${requestScope["message"]}</span>
        </c:if>
    </p>
    <form method="post">
        <p>
            <legend><h2>Edit Blog</h2></legend>
        <div class="form-group">
            <label><strong>Title</strong></label>
            <br>
            <input type="text" name="title" id="title" value="${requestScope["edit"].getTitle()}">
        </div>
        <div class="form-group">
            <label><strong>Content</strong></label>
            <br>
            <textarea cols="22" rows="10" name="content"
                      id="content">${requestScope["edit"].getContent()}</textarea>
        </div>
        <div>
            <strong><input type="submit" value="Edit"></strong>
        </div>
        </p>
    </form>
</div>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
