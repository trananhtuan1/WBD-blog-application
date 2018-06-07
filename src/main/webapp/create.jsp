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
    <title>Title</title>
</head>
<body>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="test">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="index.jsp">back home</a>
    <br>
    <a href="/display">back</a>
</p>
<form method="post">
    <p>
    <fieldset>
        <legend>Create Blog</legend>
        <table>
            <tr>
                <td>Title</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>Content</td>
                <td><textarea name="content" cols="30" rows="10" required="required"></textarea></td>
            </tr>
            <tr>
                <td><input type="submit" value="Create"></td>
            </tr>
        </table>
    </fieldset>
    </p>
</form>
</body>
</html>
