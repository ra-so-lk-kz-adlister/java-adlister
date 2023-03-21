<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/">Home</a></li>
                <li><a href="/ads">Ads</a></li>
                <li><a href="/ads/create">Create AD</a></li>
            </ul>


        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/profile">Profile</a></li>
            <c:if test="${sessionScope.user == null}">
                <li><a href="/login.jsp">Login</a></li>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <li><a href="/logout.jsp">Logout</a></li>
            </c:if>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
