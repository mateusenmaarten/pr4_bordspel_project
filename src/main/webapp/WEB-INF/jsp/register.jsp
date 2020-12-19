<%--
  Created by IntelliJ IDEA.
  User: wimst
  Date: 30/11/2020
  Time: 23:20
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
    <title>Login</title>
</head>

<body>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
    <div class="container">
        <a href="index.html" id="naam" class="navbar-brand">WebShop</a>
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
                <form action="index.html">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="First Name">First Name</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Name">Last Name</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="password">Confirm Password</label>
                                <input type="password" class="form-control" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="Geboortedatum">Geboortedatum</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="Geboortedatum">Postcode</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="Woonplaats">Woonplaats</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-9">
                            <div class="form-group">
                                <label for="Straat">Straat</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="Huisnummer">Huisnummer</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <input
                            type="submit"
                            value="Sign up"
                            class="btn btn-primary btn-block"/>
                    <div class="form-group text-center">
                        <label class="mr-2 mt-2">Already have an account?</label>
                        <a href="#">Sign in.</a>
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
