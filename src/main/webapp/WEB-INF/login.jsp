<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/arcardCss.jsp">
        <jsp:param name="style" value="style"/>
    </jsp:include>

</head>
<body >


    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 class="neonText">Please Log In</h1>
        <form  action="/login" method="POST">
            <div class="form-group">
                <label class="neon-red" for="username">Username</label>
                <input id="username" name="username" class="trans neonWhite-border" type="text">
            </div>
            <div class="form-group">
                <label class="neon-red" for="password">Password</label>
                <input id="password" name="password" class="trans neonWhite-border" type="password">
            </div>
            <input type="submit" class="btn btn-block neon-red" value="Log In">
        </form>
    </div>
</body>
</html>
