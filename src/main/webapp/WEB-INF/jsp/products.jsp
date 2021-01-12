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
<jsp:include page="navigatiebar.jsp"/>


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