<%--
  Created by IntelliJ IDEA.
  User: Hans Geerts
  Date: 21/11/2020
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>Registreren</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
</head>
<body>
<jsp:include page="navigatiebar.jsp"/>
<div class="main">
    <div class="col-md-4 col-md-offset-4">
        <div class="login-form">
            <form>
                <div class="form-group">
                    <label>Voornaam</label>
                    <input type="text" class="form-control" placeholder="Voornaam">
                </div>

                <div class="form-group">
                    <label>Achternaam</label>
                    <input type="text" class="form-control" placeholder="Achternaam">
                </div>


                <div class="form-group">
                    <label>GeboorteDatum</label>
                    <input type="text" class="form-control" placeholder="dd/mm/jjjj">
                </div>

                <div class="form-group">
                    <label>Woonplaats</label>
                    <input type="text" class="form-control" placeholder="Woonplaats">
                </div>

                <div class="form-group">
                    <label>PostCode</label>
                    <input type="text" class="form-control" placeholder="Postcode">
                </div>

                <div class="form-group">
                    <label>Straat</label>
                    <input type="text" class="form-control" placeholder="Straat">
                </div>

                <div class="form-group">
                    <label>Huisnummer</label>
                    <input type="text" class="form-control" placeholder="Huisnummer">
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control" placeholder="Email">
                </div>

                <div class="form-group">
                    <label>Wachtwoord1</label>
                    <input type="password" class="form-control" placeholder="Wachtwoord">
                </div>

                <div class="form-group">
                    <label>Wachtwoord2</label>
                    <input type="password" class="form-control" placeholder="Herhaal Wachtwoord">
                </div>

                <button type="button" class="btn btn-primary btn-block">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
                    </svg>
                    Registreren</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
