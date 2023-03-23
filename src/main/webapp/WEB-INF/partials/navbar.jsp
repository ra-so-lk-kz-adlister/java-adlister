<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/ads">Adlister</a>
        <div class="collapse navbar-collapse d-flexs justify-content-between" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ads">Ads</a>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><a class="nav-link" href="/ads/create">Create AD</a></li>
                        <br />
                    </c:when>
                    <c:otherwise>
                        <li></li>
                    </c:otherwise>
                </c:choose>
            </ul>

            <ul class="navbar-nav">
                <c:choose>
                    <c:when test="${sessionScope.user == null}">
                        <li><a class="nav-link" href="/register">Register</a></li>
                        <li><a class="nav-link" href="login">Login</a></li>
                        <br />
                    </c:when>
                    <c:otherwise>
                        <li><a class="nav-link" href="/profile">Profile</a></li>
                        <li><a class="nav-link" href="/logout">Logout</a></li>
                        <br />
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
