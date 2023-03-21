<%--
  Created by IntelliJ IDEA.
  User: songjuoh
  Date: 3/21/23
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<h1>Are you sure that you want to delete this file?</h1>
<form action="${pageContext.request.contextPath}/delete" method="post">
  <button type="submit" class="btn btn-danger">Delete</button>
</form>
<body>

</body>
</html>
