<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
<%@ page import="java.util.List" %>
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
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css"
    />
    <link rel="stylesheet" href="css/style.css" />
    <title>Producten</title>
</head>

<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
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
                        <a href="/admin/productenAdmin" class="nav-link text-dark" >Producten</a>
                        <a href="/admin/gebruikersAdmin" class="nav-link text-dark" >Gebruikers</a>
                        <a class="nav-link text-dark" >Bestellingen</a>
                        <a class="nav-link text-dark" >Categorieën</a>
                        <div class="dropdown-divider"></div>

                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section id="gallery" class="py-5">
    <div class="container">
        <div class="row mb-4 mt-5">
            <%
                List<Bordspel> spellen = (List<Bordspel>) request.getAttribute("spellen");

                for(Bordspel spel: spellen){
                    out.print((" <div class=\"col-md-4\">\n" +
                            "                <div class=\"card text-center\">\n" +
                            "                    <div class=\"card-header text-center\">\n" +
                                                    "<h1>"+ spel.getNaam() +"</h1>\n" +
                            "                    </div>\n" +
                            "                    <div class=\"card-body\">\n" +
                                                "<img src=\"" + spel.getImagePath() + "\" alt=\""+ spel.getNaam()+"\" class=\"img-fluid mb-4\" />\n" +
                            "                        <a href=\"details?id="+ spel.getId() +"\" class=\"btn btn-primary d-block\">\n" +
                            "                            <i class=\"fas fa-shopping-cart mr-2\"></i>\n" +
                            "                            Details\n" +
                            "                        </a>\n" +
                            "                    </div>\n" +
                            "                </div>\n" +
                            "            </div>"));}
            %>
<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Monopoly</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images2.jpg" alt="Monopoly" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>--%>
<%--                            Details--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Scrabble</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images3.jpg" alt="Scrabble" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>--%>
<%--                            Details--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>De kolonisten</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images3.jpg" alt="Scrabble" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>--%>
<%--                            Details--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row mb-4 mt-5">--%>
<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Monopoly</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images4.jpg" alt="Monopoly" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>--%>
<%--                            Details--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Monopoly</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images5.jpg" alt="Monopoly" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Monopoly</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images5.jpg" alt="Monopoly" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row mb-4 mt-5">--%>
<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Monopoly</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images2.jpg" alt="Monopoly" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Scrabble</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images1.jpg" alt="Scrabble" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>De kolonisten</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images4.jpg" alt="Scrabble" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row mb-4 mt-5">--%>
<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Monopoly</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images3.jpg" alt="Monopoly" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>Scrabble</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images2.jpg" alt="Scrabble" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a--%>
<%--                        >--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <div class="card text-center">--%>
<%--                    <div class="card-header text-center">--%>
<%--                        <h1>De kolonisten</h1>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <img src="images/images4.jpg" alt="Scrabble" class="img-fluid mb-4" />--%>
<%--                        <a href="/Details" class="btn btn-primary d-block">--%>
<%--                            <i class="fas fa-shopping-cart mr-2"></i>Details</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
</section>

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