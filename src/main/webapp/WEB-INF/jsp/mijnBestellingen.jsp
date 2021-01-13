<%--
  Created by IntelliJ IDEA.
  User: Maarten
  Date: 13/01/2021
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker" %>
<%@ page import="org.springframework.web.bind.annotation.GetMapping" %>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Besteld" %>
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
    <title>Mijn Bestellingen</title>
</head>

<body>
<jsp:include page="navigatiebar.jsp"/>

<section class="m-3">
    <h1 class="text-info">Bestellingen</h1>

    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Bordspel</th>
            <th>Datum bestelling</th>
            <th>Type bestelling</th>

        </tr>
        </thead>
        <tbody>


                <%
                List<Besteld> mijnBestellingen = (List<Besteld>)request.getAttribute("mijnBestellingen");

                    for(Besteld bestelling: mijnBestellingen){
                        out.print("<tr>");
                            out.print(("<td>" + bestelling.getBordspel().getNaam() + "</td>"));
                            out.print(("<td>" + bestelling.getAfhaalDatum() + "</td>"));
                            out.print(("<td>" + bestelling.getTypeBesteld().getBeschrijving() + "</td>"));
                        out.print("<tr>");
                }

            %>

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