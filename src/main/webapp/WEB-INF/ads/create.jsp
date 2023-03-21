<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="header" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
 <jsp:include page="/WEB-INF/partials/navbar.jsp">
    <jsp:param name="navbar" value="navbar" />
 </jsp:include>
<div class="container bg-warning">
    <form method="post">
        <div class="form-group">
            <label for="title">Arcade Game Name</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Pacman">
        </div>
        <div class="form-group">
            <label for="releaseYear">Game Release Year</label>
            <input type="number" class="form-control" id="releaseYear" name="releaseYear" placeholder="1999">
        </div>
        <div class="form-group">
            <label for="rating">Game Rating out of 5</label>
            <select class="form-control" id="rating" name="rating">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
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

        <div class="form-group">
            <label for="description">Game Description</label>
            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="price">Game Price (in cents)</label>
            <input type="number" class="form-control" id="price" name="price" placeholder="5099">
        </div>
        <div class="form-group text-center">
            <input type="submit" class="btn btn-success" id="submit">
        </div>
    </form>
</div>
</body>
</html>
