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

    </div>
    <div class="container">
        <h1>Your Posted Arcade Games:</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <input type="submit" class="btn btn-primary btn-block" value="See Details">
            </div>
        </c:forEach>
    </div>

</body>
</html>
