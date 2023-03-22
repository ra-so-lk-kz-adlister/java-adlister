
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="Edit" value="Edit your password" />
  </jsp:include>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <h1>Edit Profile ${user.username}</h1>
  <form method="post">
    <div class="form-group">
      <label for="newUsername">Username</label>
      <input id="newUsername" name="newUsername" class="form-control" type="text" placeholder="${user.username}">
    </div>
    <div class="form-group">
      <label for="newEmail">Email  </label>
      <input id="newEmail" name="newEmail" class="form-control" type="text" placeholder="${user.email}">
    </div>
    <div class="form-group">
      <label for="newPassword">Password</label>
      <input id="newPassword" name="newPassword" class="form-control" type="password">
    </div>
    <div class="form-group">
      <label for="newConfirm_password">Confirm Password</label>
      <input id="newConfirm_password" name="newConfirm_password" class="form-control" type="password">
    </div>
    <input value="Update" type="submit" class="btn btn-danger btn-block">
  </form>
</div>
</body>
</html>
