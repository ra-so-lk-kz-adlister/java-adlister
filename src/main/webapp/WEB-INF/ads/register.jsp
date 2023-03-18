<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 3/17/23
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new User" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new User</h1>
        <form method="post">
            <div class="form-group">
                <label for="userName">Insert a Username:</label>
                <input id="userName" class="form-control" type="text" placeholder="Username" name="userName"/>
            </div>
            <div class="form-group">
                <label for="email">Insert a Email:</label>
                <input id="email" class="form-control" type="email" placeholder="Email" name="email"/>
            </div>
            <div class="form-group">
                <label for="password">Insert a Password:</label>
                <input id="password" class="form-control" type="password" name="password"/>
            </div>

            <input type="submit" class="btn btn-outline btn-secondary">
        </form>
    </div>
</body>
</html>
