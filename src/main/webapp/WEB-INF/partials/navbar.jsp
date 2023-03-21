<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/">Home</a></li>
                <li><a href="/ads">Ads</a></li>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><a href="/ads/create">Create AD</a></li>
                        <br />
                    </c:when>
                    <c:otherwise>
                        <li></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <li><a href="login">Login</a></li>
                    <br />
                </c:when>
                <c:otherwise>
                    <li><a href="/profile">Profile</a></li>
                    <li><a href="/logout">Logout</a></li>
                    <br />
                </c:otherwise>
            </c:choose>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
