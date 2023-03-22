<%--
  Created by IntelliJ IDEA.
  User: songjuoh
  Date: 3/22/23
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete Ad</h1>

<p>Are you sure you want to delete this ad?</p>

<div class="card col-md-6" id="${ad.id}">

  <form action="${pageContext.request.contextPath}/profile/delete" method="POST">
    <input type="hidden" name="delete_id" value="${ad.id}">
    <button type="submit" class="btn btn-danger">Delete</button>
  </form>

</div>


</body>
</html>
