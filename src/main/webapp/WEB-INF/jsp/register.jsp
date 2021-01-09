<%--
  Created by IntelliJ IDEA.
  User: wimst
  Date: 30/11/2020
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker" %>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.GebruikerError" %>
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
    <title>Login</title>
</head>

<body>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
    <div class="container">
        <a href="index.html" id="naam" class="navbar-brand">Board Games</a>
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
                    <a href="index.html" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="about.html" class="nav-link">About Us</a>
                </li>
                <li class="nav-item">
                    <a href="producten.html" class="nav-link">Producten</a>
                </li>
                <li class="nav-item">
                    <a href="login.html" class="nav-link">Login</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Content Management
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="/productenAdmin" class="nav-link text-dark" >Producten</a>
                        <a class="nav-link text-dark" >Bestellingen</a>
                        <a class="nav-link text-dark" >Categorieën</a>
                        <div class="dropdown-divider"></div>
                        <a class="nav-link text-dark">Admin Aanmaken</a>
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
<%
    Gebruiker gebruiker = (Gebruiker) request.getAttribute(Gebruiker.NAME);
    GebruikerError gebruikerError = (GebruikerError) request.getAttribute(GebruikerError.NAME);
%>
<!-- LOGIN -->

<div id="login">
    <div class="container">
        <div class="card col-md-6 mx-auto">
            <div class="row">
                <div class="card-header col-md-12 text-center">
                    <h4>Register Your Account</h4>
                </div>
            </div>
            <div class="card-body">
                <form action="processRegisterForm">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="<%=Gebruiker.VOORNAAM%>"><%=Gebruiker.VOORNAAM%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.voornaam != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.VOORNAAM%>"
                                        name="<%=Gebruiker.VOORNAAM%>"
                                        value="<%=gebruiker.getVoornaam() == null ? "" : gebruiker.getVoornaam()%>">
                                <%
                                    if (gebruikerError.voornaam != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.voornaam + "</span>");
                                    }
                                %>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="<%=Gebruiker.ACHTERNAAM%>"><%=Gebruiker.ACHTERNAAM%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.achternaam != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.ACHTERNAAM%>"
                                        name="<%=Gebruiker.ACHTERNAAM%>"
                                        value="<%=gebruiker.getAchternaam()== null ? "" : gebruiker.getAchternaam()%>">
                                <%
                                    if (gebruikerError.achternaam != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.achternaam + "</span>");
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="<%=Gebruiker.EMAIL%>"><%=Gebruiker.EMAIL%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.email != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.EMAIL%>"
                                        name="<%=Gebruiker.EMAIL%>"
                                        value="<%=gebruiker.getEmail()== null ? "" : gebruiker.getEmail()%>"
                                        >
                                <%
                                    if (gebruikerError.email != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.email + "</span>");
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="<%=Gebruiker.WACHTWOORD%>"><%=Gebruiker.WACHTWOORD%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.wachtwoord != null ? " is-invalid" : "");%>"
                                        type="password"
                                        id="<%=Gebruiker.WACHTWOORD%>"
                                        name="<%=Gebruiker.WACHTWOORD%>"
                                        value="<%=gebruiker.getWachtwoord()== null ? "" : gebruiker.getWachtwoord()%>"
                                        >
                                <%
                                    if (gebruikerError.wachtwoord != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.wachtwoord + "</span>");
                                    }
                                %>
                            </div>
                        </div>
<%--                        <div class="col-md-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="password">Confirm Password</label>--%>
<%--                                <input type="password" class="form-control" />--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="<%=Gebruiker.GEBOORTEDATUM%>"><%=Gebruiker.GEBOORTEDATUM%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.geboorteDatum != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.GEBOORTEDATUM%>"
                                        name="<%=Gebruiker.GEBOORTEDATUM%>"
                                        value="<%=gebruiker.getGeboorteDatum()== null ? "" : gebruiker.getGeboorteDatum()%>"
                                        >
                                <%
                                    if (gebruikerError.geboorteDatum != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.geboorteDatum + "</span>");
                                    }
                                %>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="<%=Gebruiker.POSTCODE%>"><%=Gebruiker.POSTCODE%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.postcode != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.POSTCODE%>"
                                        name="<%=Gebruiker.POSTCODE%>"
                                        value="<%=gebruiker.getPostcode()== null ? "" : gebruiker.getPostcode()%>">
                                <%
                                    if (gebruikerError.postcode != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.postcode + "</span>");
                                    }
                                %>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="<%=Gebruiker.WOONPLAATS%>"><%=Gebruiker.WOONPLAATS%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.woonplaats != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.WOONPLAATS%>"
                                        name="<%=Gebruiker.WOONPLAATS%>"
                                        value="<%=gebruiker.getWoonplaats()== null ? "" : gebruiker.getWoonplaats()%>">
                                <%
                                    if (gebruikerError.woonplaats != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.woonplaats + "</span>");
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            <div class="form-group">
                                <label for="<%=Gebruiker.STRAAT%>"><%=Gebruiker.STRAAT%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.straat != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.STRAAT%>"
                                        name="<%=Gebruiker.STRAAT%>"
                                        value="<%=gebruiker.getStraat()== null ? "" : gebruiker.getStraat()%>">
                                <%
                                    if (gebruikerError.straat != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.straat + "</span>");
                                    }
                                %>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="<%=Gebruiker.HUISNUMMER%>"><%=Gebruiker.HUISNUMMER%></label>
                                <input
                                        class="form-control<%out.print(gebruikerError.huisnummer != null ? " is-invalid" : "");%>"
                                        type="text"
                                        id="<%=Gebruiker.HUISNUMMER%>"
                                        name="<%=Gebruiker.HUISNUMMER%>"
                                        value="<%=gebruiker.getHuisnummer()== null ? "" : gebruiker.getHuisnummer()%>">
                                <%
                                    if (gebruikerError.huisnummer != null) {
                                        out.print("<span style='color: red;'>" + gebruikerError.huisnummer + "</span>");
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                    <input
                            type="submit"
                            value="Sign up"
                            class="btn btn-primary btn-block"/>
                    <div class="form-group text-center">
                        <label class="mr-2 mt-2">Already have an account?</label>
                        <a href="/login">Sign in.</a>
                    </div>

                </form>
            </div>
        </div>
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
</div>
</body>
</html>
