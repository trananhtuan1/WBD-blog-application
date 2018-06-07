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
</head>
<body>
<p>
    <a href="/display">Back</a>
</p>
<form method="post">
    <fieldset>
        <legend>Delete Blog</legend>
        <table>
            <tr>
                <td>Title</td>
                <td>${requestScope["delete"].getTitle()}</td>
            </tr>
            <tr>
                <td>Content</td>
                <td>${requestScope["delete"].getContent()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete"></td>
            </tr>
        </table>
    </fieldset>

</form>
</body>
</html>
