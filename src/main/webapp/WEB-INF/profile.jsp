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
        <h1>Welcome, ${sessionScope.user.username}!</h1>


    <c:forEach var="ad" items="${ads}">

        <c:if test="${ad.user_id == sessionScope.user.id}">

        <div class="card col-md-6" id="${ad.id}">
            <h2>${ad.ad_name}</h2>
            <p>${ad.rating}/5</p>
            <p>$${ad.price/100}</p>

            <input type="submit" class="btn btn-primary btn-block" value="See Details">

            <form action="${pageContext.request.contextPath}/delete" method="post">
                <input type="hidden" name="delete_id" value="${ad.id}" />
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>

            <form action="${pageContext.request.contextPath}/edit" method="get">
                <input type="hidden" name="edit_id" value="${ad.id}" />
                <button type="submit" class="btn btn-light">Edit</button>
            </form>
        </div>
        </c:if>
    </c:forEach>
    </div>


</body>
</html>
