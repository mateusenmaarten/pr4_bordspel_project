<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.BesteldError" %>
<%@ page import="java.util.List" %>

<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>


    <title>BordSpellen</title>
</head>

<body>
<jsp:include page="navigatiebar.jsp"/>
<!-- SHOWCASE SLIDER -->
<section id="showcase" style="margin-top: -40px">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item carousel-image-1 active">
                <div class="container">
                    <div
                            class="carousel-caption d-none d-sm-block text-right mb-5"
                    ></div>
                </div>
            </div>

            <div class="carousel-item carousel-image-2">
                <div class="container">
                    <div class="carousel-caption d-none d-sm-block mb-5"></div>
                </div>
            </div>

            <div class="carousel-item carousel-image-3">
                <div class="container">
                    <div
                            class="carousel-caption d-none d-sm-block text-right mb-5"
                    ></div>
                </div>
            </div>
        </div>

        <a href="#myCarousel" data-slide="prev" class="carousel-control-prev">
            <span class="carousel-control-prev-icon"></span>
        </a>

        <a href="#myCarousel" data-slide="next" class="carousel-control-next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</section>

<!--HOME ICON SECTION  -->
<section id="home-icons" class="py-5">
    <div class="container">
        <a href="/products" style="color: #333333">
        <div class="row">
            <div class="col-md-4 offset-md-2 mb-4 text-center">
                <i class="fas fa-chess-knight fa-3x mb-2"></i>
                <h3>Board Games</h3>
            </div>

            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-cart-plus fa-3x mb-2"></i>
                <h3>Koop of Huur</h3>
            </div>
        </div>
        </a>
    </div>
</section>

<!-- HOME HEADING SECTION -->
<section id="home-heading" class="p-5">
    <div class="dark-overlay">
        <div class="row">
            <div class="col">
                <div class="container pt-5">
                    <a href="/register" >
                        <h1 style="color: white">Klaar om te starten?</h1>
                    </a>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- PHOTO GALLERY -->
<section id="gallery" class="py-5">
    <div class="container">


        <div class="row mb-4">
            <div class="col-md-4">
                <img src="images/images1.jpg" alt="" class="img-fluid" />
            </div>

            <div class="col-md-4">
                <img
                        src="images/images2.jpg"
                        alt=""
                        class="img-fluid"
                />
            </div>

            <div class="col-md-4">
                <img
                        src="images/images3.jpg"
                        alt=""
                        class="img-fluid"
                />
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-md-4">
                <img
                        src="images/images4.jpg"
                        alt=""
                        class="img-fluid"
                />
            </div>

            <div class="col-md-4">
                <img
                        src="images/images5.jpg"
                        alt=""
                        class="img-fluid"
                />
                </a>
            </div>

            <div class="col-md-4">
                <img
                        src="images/images6.jpg"
                        alt=""
                        class="img-fluid"
                />
            </div>
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
    $("#year").text(new Date().getFullYear());

    $(".carousel").carousel({
        interval: 6000,
        pause: "hover",
    });
</script>
</body>
</html>
