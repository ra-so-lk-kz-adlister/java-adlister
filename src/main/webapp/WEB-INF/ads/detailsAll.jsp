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
  <div class="row d-flex justify-content-center">
    <form class="d-flex column" action="/profile/edit">
      <input type="submit" value="Edit Profile" class="btn btn-secondary btn-block">
    </form>

    <form class="d-flex column" action="/profile/delete">
      <input type="submit" value="Delete Profile" class="btn btn-warning btn-block">
    </form>
  </div>
  <div class="d-flex justify-content-center gap-3">
    <c:forEach var="detail" items="${details}">
        <div class="card border border-2 border-dark shadow p-3 mb-5 bg-body-tertiary rounded" style="width: 25rem;">
          <img src="https://wallpaperaccess.com/full/236572.jpg" class="card-img border border-1" alt="mario">
          <div class="card-body">
            <div class="col-md-12" id="${detail.id}">
              <h2>Name: ${detail.ad_name}</h2>
              <p>Rating: ${detail.rating}/5</p>
              <p>Price: $${detail.price/100}</p>
              <p><i>
                <c:forEach var="genre" items="${genres}">
                  <c:if test="${genre.ad_id == detail.id && detail.user_id == sessionScope.user.id}">|
                    ${genre.genreName}|
                  </c:if>
                </c:forEach>
              </i></p>
              <p>Release year: ${detail.release_year}</p>
              <p>Description: ${detail.description}</p>
            </div>
          </div>
        </div>
    </c:forEach>
  </div>
</div>

</body>
</html>