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
    <title>Title</title>
</head>
<body>
<p>
    <a href="/display">Back</a>
</p>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="test">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Edit Blog</legend>
        <strong>Title</strong><br>
        <input type="text" name="title" id="title" value="${requestScope["edit"].getTitle()}">
        <br>
        <strong>Content</strong><br>
        <input type="text" name="content" id="content" value="${requestScope["edit"].getContent()}">
        <br>
        <strong><input type="submit" value="Edit"></strong>
    </fieldset>
</form>
</body>
</html>
