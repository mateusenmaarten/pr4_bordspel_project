<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
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
    <title>BordSpellen</title>
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
                    <a href="products.html" class="nav-link">Producten</a>
                </li>
                <li class="nav-item">
                    <a href="contact.html" class="nav-link">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- SHOWCASE SLIDER -->
<section id="showcase">
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
        <div class="row">
            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-chess-knight fa-3x mb-2"></i>
                <h3>Board Games</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Libero,
                    veniam.
                </p>
            </div>
            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-dice fa-3x mb-2"></i>
                <h3>Dice Games</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Libero,
                    veniam.
                </p>
            </div>
            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-cart-plus fa-3x mb-2"></i>
                <h3>Buy or Rent</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Libero,
                    veniam.
                </p>
            </div>
        </div>
    </div>
</section>

<!-- HOME HEADING SECTION -->
<section id="home-heading" class="p-5">
    <div class="dark-overlay">
        <div class="row">
            <div class="col">
                <div class="container pt-5">
                    <h1>Are You Ready To Get Started?</h1>
                    <p class="d-none d-md-block">
                        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Est
                        eaque magni sit dolores. Nisi, dolor nam modi perspiciatis
                        consequatur soluta.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- PHOTO GALLERY -->
<section id="gallery" class="py-5">
    <div class="container">
        <h1 class="text-center">Photo Gallery</h1>
        <p class="text-center">Check out our photos</p>
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
