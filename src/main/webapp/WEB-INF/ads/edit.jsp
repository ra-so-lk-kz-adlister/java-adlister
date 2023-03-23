<%--
  Created by IntelliJ IDEA.
  User: songjuoh
  Date: 3/21/23
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/partials/arcardCss.jsp">
    <jsp:param name="style" value="style"/>
</jsp:include>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>


<div class="card text-center" style="width: 18rem">
    <div class="card-header">
        Edit
    </div>
    <div class="card-body">
        <form method="post">
            <input type="hidden" name="adId" value="${ad.id}">
            <input type="hidden" name="adId" value="${ad.user_id}">

            <div class="input-group input-group-sm mb-3">
                <span class="input-group-text col-2" id="adName">Name</span>
                <input class="form-control" type="text" name="adName" value="${ad.ad_name}">
            </div>
            <div class="input-group input-group-sm mb-3">
                <span class="input-group-text col-2" id="releaseYear">Year</span>
                <input class="form-control" type="number" name="releaseYear" value="${ad.release_year}">
            </div>
            <div class="input-group input-group-sm mb-3">
                <span class="input-group-text col-2" id="rating">Rating</span>
                <input  class="form-control" type="number" name="rating" value="${ad.rating}">
            </div>
            <div class="form-group">
                <h4>Genre Types</h4>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="genre" name="genre" value="1">
                    <label class="form-check-label" for="genre">Fighter</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="genre" name="genre" value="2">
                    <label class="form-check-label" for="genre">Light Gun</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="genre" name="genre" value="3">
                    <label class="form-check-label" for="genre">Pinball</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="genre" name="genre" value="4">
                    <label class="form-check-label" for="genre">Action and Adventure</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="genre" name="genre" value="5">
                    <label class="form-check-label" for="genre">Racer</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="genre" name="genre" value="6">
                    <label class="form-check-label" for="genre">Classic</label>
                </div>
            </div>
            <div class="input-group input-group-sm mb-3">
                <span class="input-group-text col-2" id="description">Description</span>
                <textarea class="form-control" name="description">${ad.description}</textarea>
            </div>
            <div class="input-group input-group-sm mb-3">
                <span class="input-group-text col-2" id="price">Price</span>
                <input  class="form-control" type="number"  name="price" value="${ad.price}">
            </div>
            <button class="btn btn-primary" type="submit">Submit</button>
        </form>
    </div>
</div>

</body>
</html>