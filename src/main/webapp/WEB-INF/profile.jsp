<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />

    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome <br>      ${sessionScope.user.username}!</h1>
        <p>email:${sessionScope.user.email}</p>

        <h1>Your Posted Arcade Games:</h1>
        <p>test</p>
        <c:set var="games" value="${requestScope.games}" />
        <c:forEach var="game" items="${games}">
            <div class="col-md-6" id="games.id">
                <h2>${game.ad_name}</h2>
                <p>${game.description}</p>
                <p>test: ${game.rating}</p>
                <input type="submit" class="btn btn-primary btn-block" value="See Details">

            </div>
        </c:forEach>
    </div>

</body>
</html>
