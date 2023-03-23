<%--
  Created by IntelliJ IDEA.
  User: songjuoh
  Date: 3/22/23
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include></head>
<body>
<div class="container d-flex justify-content-center align-items-stretch ">
    <div class="row">
        <div class="card text-center align-self-center p-0">
            <div class="card-header text-danger bg-dark">Delete Ad</div>

            <div class="card-body">
                <p>Are you sure you want to delete this User,</p>
                <p>${sessionScope.user.username}?</p>
                <i class="bi bi-exclamation-circle text-danger"></i>
                <p class="text-danger">⚠ All of the Ads will be deleted! ⚠</p>

                <form action="${pageContext.request.contextPath}/profile/delete" method="POST">
                    <input type="hidden" name="delete_id" value="${ad.id}">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>

        </div>
    </div>
</div>


</body>
</html>
