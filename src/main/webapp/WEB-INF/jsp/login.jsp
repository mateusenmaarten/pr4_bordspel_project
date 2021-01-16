
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<jsp:include page="navigatiebar.jsp"/>
<!-- ACTIONS -->
<section id="actions" class="mb-5 mt-5 bg-light">
    <div class="container">
        <div class="row"></div>
    </div>
</section>

<!-- LOGIN -->
<section id="login">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-header">
                        <h4>Account Login</h4>
                    </div>
                    <div class="card-body">
                    <c:if test="${param.error ne null}">
                        <div class="alert alert-danger alert-dismissible fade show">
                            <strong>Error: </strong> Invalid Credentials
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                        </div>
                    </c:if>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="username">Email</label>
                                <input id="username" name="username" placeholder="Email"
                                       class="form-control"
                                       required autofocus/>

                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input id="password" name="password" placeholder="Password" type="password" class="form-control" required/>
                            </div>
                            <input
                                    type="submit"
                                    value="Login"
                                    class="btn btn-primary btn-block"/>
                            <div id="register" class="form-group text-center">
                    <label class="mr-2 mt-2">New User?</label>
                    <a href="/register">Create an account.</a>
                    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
