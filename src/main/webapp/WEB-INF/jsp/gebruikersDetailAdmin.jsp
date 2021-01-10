<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker" %><%--
  Created by IntelliJ IDEA.
  User: Maarten
  Date: 9/01/2021
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
            integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
            crossorigin="anonymous"
    />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
            integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/style.css" />
    <title>Details gebruiker</title>
</head>

<body>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container">
        <a href="/" id="naam" class="navbar-brand">Board Games</a>
        <button
                class="navbar-toggler"
                data-toggle="collapse"
                data-target="#navbarCollapse"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a href="/" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="/about" class="nav-link">About Us</a>
                </li>
                <li class="nav-item">
                    <a href="/products" class="nav-link">Producten</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">Login</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Content Management
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="productenAdmin" class="nav-link text-dark" >Producten</a>
                        <a href="/gebruikersAdmin" class="nav-link text-dark" >Gebruikers</a>
                        <a class="nav-link text-dark" >Bestellingen</a>
                        <a class="nav-link text-dark" >Categorieën</a>
                        <div class="dropdown-divider"></div>

                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- ACTIONS -->
<section id="actions" class="mb-5 mt-5 bg-light">
    <div class="container">
        <div class="row"></div>
    </div>
</section>

<div>
    <form>

        <div class="container backgroundWhite pt-4">
            <div class="card" style="border: 1px solid #DCDCDC;">
                <div class="card-header bg-light text-dark ml-0 row container" style="border-radius: 0px;">
                    <div class="col-md-12 font-italic font-weight-bolder text-center">
                        <%
                            Gebruiker gebruiker = (Gebruiker) request.getAttribute("selectedgebruiker");
                            out.print("<h1>" + gebruiker.getVoornaam() + " " + gebruiker.getAchternaam() + "</h1>");
                        %>
                    </div>

                </div>
                <div class="card-body">
                    <div class="container rounded p-2">
                        <div class="row">
                            <div class="col-12 col-lg-4 p-1 text-center">
                                <img src="" style="width:100%" class="rounded" />
                            </div>
                            <div class="col-12 col-lg-8">
                                <div class="row pl-3">

                                    <div class="col-12">
                                        <p class="text-secondary"><% out.print(Gebruiker.EMAIL + ": " + gebruiker.getEmail());%> </p>
                                    </div>
                                    <div class="col-12">
                                        <p class="text-secondary"><% out.print(Gebruiker.GEBOORTEDATUM + ": " + gebruiker.getGeboorteDatum());%> </p>
                                    </div>
                                    <div class="col-12">
                                        <p class="text-secondary"><% out.print(Gebruiker.WOONPLAATS + ": " + gebruiker.getWoonplaats());%> </p>
                                    </div>
                                    <div class="col-12">
                                        <p class="text-secondary"><% out.print(Gebruiker.POSTCODE + ": " + gebruiker.getPostcode());%> </p>
                                    </div>
                                    <div class="col-12">
                                        <p class="text-secondary"><% out.print(Gebruiker.STRAAT + ": " + gebruiker.getStraat());%> </p>
                                    </div>
                                    <div class="col-12">
                                        <p class="text-secondary"><% out.print(Gebruiker.HUISNUMMER + ": " + gebruiker.getHuisnummer());%> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-light">
                    <div class="row d-flex justify-content-md-end">
                        <div class="col-3 pb-1 ">
                            <a href="/gebruikersAdmin" class="btn btn-primary form-control btn-lg" style="height:50px;">Terug naar overzicht</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- FOOTER -->
<footer id="main-footer" class="text-center p-3 fixed-bottom">
    <div class="container">
        <div class="row">
            <div class="col">
                <p>Copyright &copy; <span id="year"></span> Board Games</p>
            </div>
        </div>
    </div>
</footer>

<script
        src="http://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"
></script>

<script>
    // Get the current year for the copyright
    $("#year").text(new Date().getFullYear());
</script>
</body>
</html>
