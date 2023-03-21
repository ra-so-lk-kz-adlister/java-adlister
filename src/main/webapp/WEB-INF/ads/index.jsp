<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6" id="${ad.id}">
            <h2>${ad.ad_name}</h2>
            <p>${ad.rating}/5</p>
            <p>$${ad.price/100}</p>

            <input type="submit" class="btn btn-primary btn-block" value="See Details">
            <form action="${pageContext.request.contextPath}/delete" method="post">
                <input type="hidden" name="id" value="${ad.id}" />
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
    </c:forEach>
</div>

</body>
</html>
