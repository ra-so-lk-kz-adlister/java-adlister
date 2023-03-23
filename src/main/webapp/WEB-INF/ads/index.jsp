<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/arcardCss.jsp">
        <jsp:param name="style" value="style"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container d-flex justify-content-center">
    <div class="column">
        <div class="row">
            <h1 class="text-center my-5">Here Are All The Ads!</h1>
        </div>

        <form action="/ads" method="post">
            <label for="organize">Organize: </label>
            <input id="organize" name="organize" type="submit" class="btn btn-outline-secondary" value=" Asc | Desc">
        </form>
        <div class="row d-flex">
    <c:forEach var="ad" items="${ads}">
        <div class="row justify-content-center gap-3" id="${ad.id}">
                <div class="card border border-2 border-dark shadow p-3 mb-5 bg-body-tertiary rounded" style="width: 25rem;">
                    <img src="https://wallpaperaccess.com/full/236572.jpg" class="card-img border border-1" alt="mario">
                    <div class="card-body">
                        <div class="col-md-12" id="${ad.id}">
                            <h2>${ad.ad_name}</h2>
                            <p>${ad.rating}/5</p>
                            <p>$${ad.price/100}</p>
                            <p><i>
                                <c:forEach var="genre" items="${genres}">
                                    <c:if test="${genre.ad_id == ad.id}">|${genre.genreName}| </c:if>
                                </c:forEach>
                            </i></p>
                            <form action="/detail" method="GET">
                                <input type="hidden" name="adId" value="${ad.id}" />
                                <button type="submit" class="btn btn-danger">See Details</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>