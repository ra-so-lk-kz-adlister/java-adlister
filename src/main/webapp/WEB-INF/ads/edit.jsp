<%--
  Created by IntelliJ IDEA.
  User: songjuoh
  Date: 3/21/23
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>



<c:forEach items="${ads}" var="ad">

    <c:if test="${ad.user_id == sessionScope.user.id}">

    <form method="post" action="DeleteServlet">
        <input type="hidden" name="adId" value="${ad.adId}">

        <label for="adName">Ad Name:</label>
        <input type="text" name="adName" value="${ad.adName}">

        <label for="releaseYear">Release Year:</label>
        <input type="number" name="releaseYear" value="${ad.releaseYear}">

        <label for="rating">Rating:</label>
        <input type="number" name="rating" value="${ad.rating}">

        <label for="description">Description:</label>
        <textarea name="description">${ad.description}</textarea>

        <label for="price">Price:</label>
        <input type="number" step="0.01" name="price" value="${ad.price}">

        <input type="submit" value="Save Changes">
    </form>
    </c:if>
</c:forEach>



</body>
</html>
