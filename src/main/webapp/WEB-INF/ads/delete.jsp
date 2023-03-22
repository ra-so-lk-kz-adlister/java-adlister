<%--
  Created by IntelliJ IDEA.
  User: songjuoh
  Date: 3/21/23
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/partials/arcardCss.jsp">
    <jsp:param name="style" value="style"/>
</jsp:include>
<html>
<head>
    <title>Title</title>
</head>

<body>

<h1>Delete Ad</h1>

<p>Are you sure you want to delete this ad?</p>

    <div class="card col-md-6" id="${ad.id}">

        <form action="${pageContext.request.contextPath}/delete" method="POST">
            <input type="hidden" name="delete_id" value="${id}">
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>

    </div>
</body>
</html>
