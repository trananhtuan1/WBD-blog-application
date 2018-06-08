<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/7/2018
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/assets/css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<c:import url="navbar.jsp"/>

<div class="container">
    <p>
        <c:forEach items='${requestScope["search"]}' var="view">
    <div class="form-group">
        <label><strong>Title</strong></label>
        <br>
        <a href="/display?action=view&id=${view.getId()}">${view.getTitle()}</a>
    </div>
    <div class="form-group">
        <label><strong>Content</strong></label>
        <br>
            ${view.getContent()}
    </div>
    <div>
        <button><a href="/display?action=edit&id=${view.getId()}">Edit</a></button>
        &nbsp
        <button><a href="/display?action=delete&id=${view.getId()}">Delete</a></button>
    </div>
    </c:forEach>
    </table>
    </p>
</div>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
