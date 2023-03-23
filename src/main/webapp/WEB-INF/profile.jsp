<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/arcardCss.jsp">
        <jsp:param name="style" value="style"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container d-flex justify-content-center">
        <div class="row justify-content-center gap-3">

        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <form action="/profile/edit">
            <input type="submit" value="Edit Profile" class="btn btn-secondary btn-block">
        </form>

        <form action="/profile/delete">
            <input type="submit" value="Delete Profile" class="btn btn-warning btn-block">
        </form>

    <c:forEach var="ad" items="${ads}">


        <c:if test="${ad.user_id == sessionScope.user.id}">
            <div class="card border border-2 border-dark shadow p-3 mb-5 bg-body-tertiary rounded" style="width: 25rem;">
                <img src="https://wallpaperaccess.com/full/236572.jpg" class="card-img border border-1" alt="mario">
                <div class="card-body">
                    <div class="col-md-12 col-6" id="${ad.id}">
                        <h2>${ad.ad_name}</h2>
                        <p>${ad.rating}/5</p>
                        <p>$${ad.price/100}</p>
                        <p><i>
                            <c:forEach var="genre" items="${genres}">
                                <c:if test="${genre.ad_id == ad.id && ad.user_id == sessionScope.user.id}">|
                                    ${genre.genreName}|
                                </c:if>
                            </c:forEach>
                        </i></p>
                        <div class="d-flex justify-content-between">

                            <form action="${pageContext.request.contextPath}/profile/detail" method="get">
                                <input type="hidden" name="detail_id" value="${ad.id}" />
                                <button type="submit" class="btn btn-primary">See Details</button>
                            </form>

                            <form action="${pageContext.request.contextPath}/delete" method="post">
                                <input type="hidden" name="delete_id" value="${ad.id}" />
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>

                            <form action="${pageContext.request.contextPath}/edit" method="get">
                                <input type="hidden" name="edit_id" value="${ad.id}" />
                                <button type="submit" class="btn btn-light">Edit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
    </c:forEach>
        </div>
    </div>


</body>
</html>
