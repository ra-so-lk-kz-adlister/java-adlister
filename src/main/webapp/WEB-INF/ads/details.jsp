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


<c:forEach var="detail" items="${details}">
        <div class="d-flex justify-content-center gap-3" id="${detail.id}">
            <div class="card border border-2 border-dark shadow p-3 mb-5 bg-body-tertiary rounded" style="width: 25rem;">
                <img src="https://wallpaperaccess.com/full/236572.jpg" class="card-img border border-1" alt="mario">
                <div class="card-body">
                    <div class="col-md-12" id="${detail.id}">
                        <h2>${detail.ad_name}</h2>
                        <p>${detail.rating}/5</p>
                        <p>${detail.release_year}</p>
                        <p>$${detail.price/100}</p>
                        <p><i>
                            <c:forEach var="genre" items="${genres}">
                                <c:if test="${genre.detail_id == detail.id}">|${genre.genreName}| </c:if>
                            </c:forEach>
                        </i></p>
                        <p>${detail.description}</p>
                    </div>
                </div>
            </div>
        </div>
</c:forEach>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
