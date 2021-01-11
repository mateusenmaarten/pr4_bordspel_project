<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
<%@ page import="java.util.List" %>
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
<%--    <link rel="stylesheet" href="~/css/site.css" />--%>
<%--    <link rel="stylesheet" href="~/css/style.css" />--%>
<%--    <link rel="stylesheet" href="~/css/all.min.css" />--%>
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
                        <a href="/admin/gebruikersAdmin" class="nav-link text-dark" >Gebruikers</a>
                        <a href="/admin/bestellingenAdmin" class="nav-link text-dark" >Bestellingen</a>
                        <a class="nav-link text-dark" >Categorieën</a>
                        <div class="dropdown-divider"></div>

                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="m-3">
    <h1 class="text-info">Producten</h1>
    <p>
        <a href="createProduct" class="btn btn-success">Create a new boardgame</a>
    </p>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Naam</th>
            <th>Prijs</th>
            <th>Aantal spelers</th>
            <th>Min. leeftijd</th>
            <th>Speelduur</th>
            <th>Taal</th>
            <th>Uitgever</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <%
                List<Bordspel> spellen = (List<Bordspel>) request.getAttribute("spellen");

                for(Bordspel spel: spellen){
                    out.print(("<td>" + spel.getNaam() + "</td>"));
                    out.print(("<td>" + spel.getPrijs() + "</td>"));
                    out.print(("<td>" + spel.getAantalSpelers() + "</td>"));
                    out.print(("<td>" + spel.getMinLeeftijd() + "</td>"));
                    out.print(("<td>" + spel.getSpeelduur() + "</td>"));
                    out.print(("<td>" + spel.getTaal() + "</td>"));
                    out.print(("<td>" + spel.getUitgever() + "</td>"));
                    out.print(("<td class=\"text-center\">\n" +
                            "                <div class=\"w-75 btn-group\" role=\"group\">\n" +
                            "                    <a\n" +
                            "                            asp-action=\"Edit\"\n" +
                            "                            asp-route-id=\"@item.ProductID\"\n" +
                            "                            class=\"btn btn-primary mx-2\"\n" +
                            "                    ><i class=\"fas fa-edit\"></i\n" +
                            "                    ></a>\n" +
                            "                    <a\n" +
                            "                            asp-action=\"Delete\"\n" +
                            "                            asp-route-id=\"@item.ProductID\"\n" +
                            "                            class=\"btn btn-danger mx-2\"\n" +
                            "                    ><i class=\"far fa-trash-alt\"></i\n" +
                            "                    ></a>\n" +
                            "                </div>\n" +
                            "            </td>\n" +
                            "        </tr>"));
                }
            %>

<%--            <td class="text-center">--%>
<%--                <div class="w-75 btn-group" role="group">--%>
<%--                    <a--%>
<%--                            asp-action="Edit"--%>
<%--                            asp-route-id="@item.ProductID"--%>
<%--                            class="btn btn-primary mx-2"--%>
<%--                    ><i class="fas fa-edit"></i--%>
<%--                    ></a>--%>
<%--                    <a--%>
<%--                            asp-action="Delete"--%>
<%--                            asp-route-id="@item.ProductID"--%>
<%--                            class="btn btn-danger mx-2"--%>
<%--                    ><i class="far fa-trash-alt"></i--%>
<%--                    ></a>--%>
<%--                </div>--%>
<%--            </td>--%>
<%--        </tr>--%>
        </tbody>
    </table>
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

<%--<script--%>
<%--        src="http://code.jquery.com/jquery-3.3.1.min.js"--%>
<%--        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="--%>
<%--        crossorigin="anonymous"--%>
<%--></script>--%>
<%--<script--%>
<%--        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"--%>
<%--        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"--%>
<%--        crossorigin="anonymous"--%>
<%--></script>--%>
<%--<script--%>
<%--        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"--%>
<%--        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"--%>
<%--        crossorigin="anonymous"--%>
<%--></script>--%>

<script>
    // Get the current year for the copyright
    $("#year").text(new Date().getFullYear());
</script>
</body>
</html>