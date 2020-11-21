<%--
  Created by IntelliJ IDEA.
  User: Hans Geerts
  Date: 21/11/2020
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bordspellen</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Bordspellen Winkel</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Bordspellen</a></li>
            <li><a href="#">Huren of Kopen</a></li>
        </ul>
        <form class="navbar-form navbar-left" action="/action_page.php">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Zoek Bordspel">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Registreren</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Inloggen</a></li>
        </ul>
    </div>
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
