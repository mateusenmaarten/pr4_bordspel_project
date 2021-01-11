<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.BordspelError" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="~/css/site.css" />
    <link rel="stylesheet" href="~/css/style.css" />
    <link rel="stylesheet" href="~/css/all.min.css" />
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
            integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
            crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <title>Index</title>
</head>

<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
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
                    <a href="\index" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="\about" class="nav-link">About Us</a>
                </li>
                <li class="nav-item">
                    <a href="\producten" class="nav-link">Producten</a>
                </li>
                <li class="nav-item">
                    <a href="\login" class="nav-link">Login</a>
                </li>

                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                        Content Management
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="/admin/productenAdmin" class="nav-link text-dark" >Producten</a>
                        <a href="/gebruikersAdmin" class="nav-link text-dark" >Gebruikers</a>
                        <a href="/admin/bestellingenAdmin" class="nav-link text-dark" >Bestellingen</a>
                        <a class="nav-link text-dark" >Categorieën</a>
                        <div class="dropdown-divider"></div>

                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%
    Bordspel bordspel = (Bordspel) request.getAttribute("bordspel");
%>
<form action="/processEditProductForm">
    <div class="text-danger"></div>
    <div class="m-5">
        <div class="form-group row">
            <h2 class="text-info pl-3">Create Product</h2>
        </div>

        <div class="form-group row">
            <div class="col-8">
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=bordspel.NAAM%>"><%=bordspel.NAAM%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=bordspel.NAAM%>"
                               name="<%=bordspel.NAAM%>"
                               value="<%=bordspel.getNaam() == null ? "" : bordspel.getNaam()%>">


                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.PRIJS%>"><%=Bordspel.PRIJS%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.PRIJS%>"
                               name="<%=Bordspel.PRIJS%>"
                               value="<%=bordspel.getPrijs() == 0.0 ? "" : bordspel.getPrijs()%>">

                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.AANTALSPELERS%>"><%=Bordspel.AANTALSPELERS%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.AANTALSPELERS%>"
                               name="<%=Bordspel.AANTALSPELERS%>"
                               value="<%=bordspel.getAantalSpelers() == null ? "" : bordspel.getAantalSpelers()%>">

                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.FOTO%>"><%=Bordspel.FOTO%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.FOTO%>"
                               name="<%=Bordspel.FOTO%>"
                               value="<%=bordspel.getImagePath() == null ? "" : bordspel.getImagePath()%>">

                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.MINIMUMLEEFTIJD%>"><%=Bordspel.MINIMUMLEEFTIJD%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.MINIMUMLEEFTIJD%>"
                               name="<%=Bordspel.MINIMUMLEEFTIJD%>"
                               value="<%=bordspel.getMinLeeftijd() == 0 ? "" : bordspel.getMinLeeftijd()%>">
                        <
                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.SPEELDUUR%>"><%=Bordspel.SPEELDUUR%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.SPEELDUUR%>"
                               name="<%=Bordspel.SPEELDUUR%>"
                               value="<%=bordspel.getSpeelduur() == null ? "" : bordspel.getSpeelduur()%>">

                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.TAAL%>"><%=Bordspel.TAAL%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.TAAL%>"
                               name="<%=Bordspel.TAAL%>"
                               value="<%=bordspel.getTaal() == null ? "" : bordspel.getTaal()%>">

                    </div>
                </div>


                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.BESCHRIJVING%>"><%=Bordspel.BESCHRIJVING%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.BESCHRIJVING%>"
                               name="<%=Bordspel.BESCHRIJVING%>"
                               value="<%=bordspel.getBeschrijving() == null ? "" : bordspel.getBeschrijving()%>">

                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.UITGEVER%>"><%=Bordspel.UITGEVER%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control"
                               type="text"
                               id="<%=Bordspel.UITGEVER%>"
                               name="<%=Bordspel.UITGEVER%>"
                               value="<%=bordspel.getUitgever() == null ? "" : bordspel.getUitgever()%>">

                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-8 offset-4 row">

                        <div class="col">
                            <input type="submit" class="btn btn-primary w-100" value="Create" />
                        </div>
                        <div class="col">
                            <a href="/admin/productenAdmin" class="btn btn-success w-100"><i class="fas fa-sign-out-alt"></i> Back</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>

<!-- FOOTER -->
<footer id="main-footer" class="text-center p-4">
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
