<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/arcardCss.jsp">
        <jsp:param name="style" value="style"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label class="text-warning" for="username">Username</label>
                <input id="username" name="username" class="form-control " type="text">
            </div>
            <div class="form-group">
                <label class="text-warning" for="email">Email</label>
                <input id="email" name="email" class="form-control " type="text">
            </div>
            <div class="form-group">
                <label class="text-warning" for="password">Password</label>
                <input id="password" name="password" class="form-control " type="password">
            </div>
            <div class="form-group">
                <label class="text-warning" for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control " type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
