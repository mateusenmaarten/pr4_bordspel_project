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
<jsp:include page="navigatiebar.jsp"/>

<%
    Bordspel bordspel = (Bordspel) request.getAttribute(Bordspel.NAME);
    BordspelError bordspelError = (BordspelError) request.getAttribute(BordspelError.NAME);
%>



<form action="processCreateProductForm">
    <div class="text-danger"></div>
    <div class="m-5">
        <div class="form-group row">
            <h2 class="text-info pl-3">Create Product</h2>
        </div>

        <div class="form-group row">
            <div class="col-8">
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.NAAM%>"><%=Bordspel.NAAM%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.naam != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.NAAM%>"
                               name="<%=Bordspel.NAAM%>"
                               value="<%=bordspel.getNaam() == null ? "" : bordspel.getNaam()%>">
                        <%
                            if (bordspelError.naam != null) {
                                out.print("<span style='color: red;'>" + bordspelError.naam + "</span>");
                            }
                        %>

                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.PRIJS%>"><%=Bordspel.PRIJS%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.prijs != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.PRIJS%>"
                               name="<%=Bordspel.PRIJS%>"
                               value="<%=bordspel.getPrijs() == 0.0 ? "" : bordspel.getPrijs()%>">
                        <%
                            if (bordspelError.prijs != null) {
                                out.print("<span style='color: red;'>" + bordspelError.prijs + "</span>");
                            }
                        %>
                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.AANTALSPELERS%>"><%=Bordspel.AANTALSPELERS%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.aantalSpelers != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.AANTALSPELERS%>"
                               name="<%=Bordspel.AANTALSPELERS%>"
                               value="<%=bordspel.getAantalSpelers() == null ? "" : bordspel.getAantalSpelers()%>">
                        <%
                            if (bordspelError.aantalSpelers != null) {
                                out.print("<span style='color: red;'>" + bordspelError.aantalSpelers + "</span>");
                            }
                        %>
                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.FOTO%>"><%=Bordspel.FOTO%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.foto != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.FOTO%>"
                               name="<%=Bordspel.FOTO%>"
                               value="<%=bordspel.getImagePath() == null ? "" : bordspel.getImagePath()%>">
                        <%
                            if (bordspelError.foto != null) {
                                out.print("<span style='color: red;'>" + bordspelError.foto + "</span>");
                            }
                        %>
                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.MINIMUMLEEFTIJD%>"><%=Bordspel.MINIMUMLEEFTIJD%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.minimumLeeftijd != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.MINIMUMLEEFTIJD%>"
                               name="<%=Bordspel.MINIMUMLEEFTIJD%>"
                               value="<%=bordspel.getMinLeeftijd() == 0 ? "" : bordspel.getMinLeeftijd()%>">
                        <%
                            if (bordspelError.minimumLeeftijd != null) {
                                out.print("<span style='color: red;'>" + bordspelError.minimumLeeftijd + "</span>");
                            }
                        %>
                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.SPEELDUUR%>"><%=Bordspel.SPEELDUUR%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.speelduur != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.SPEELDUUR%>"
                               name="<%=Bordspel.SPEELDUUR%>"
                               value="<%=bordspel.getSpeelduur() == null ? "" : bordspel.getSpeelduur()%>">
                        <%
                            if (bordspelError.speelduur != null) {
                                out.print("<span style='color: red;'>" + bordspelError.speelduur + "</span>");
                            }
                        %>
                    </div>

                </div>

                <div class="form-group row">
                    <div class="col-4">
                        <label for="<%=Bordspel.TAAL%>"><%=Bordspel.TAAL%></label>
                    </div>
                    <div class="col-8">
                        <input class="form-control<%out.print(bordspelError.taal != null ? " is-invalid" : "");%>"
                               type="text"
                               id="<%=Bordspel.TAAL%>"
                               name="<%=Bordspel.TAAL%>"
                               value="<%=bordspel.getTaal() == null ? "" : bordspel.getTaal()%>">
                        <%
                            if (bordspelError.taal != null) {
                                out.print("<span style='color: red;'>" + bordspelError.taal + "</span>");
                            }
                        %>
                    </div>
                </div>


                    <div class="form-group row">
                        <div class="col-4">
                            <label for="<%=Bordspel.BESCHRIJVING%>"><%=Bordspel.BESCHRIJVING%></label>
                        </div>
                        <div class="col-8">
                            <input class="form-control<%out.print(bordspelError.beschrijving != null ? " is-invalid" : "");%>"
                                   type="text"
                                   id="<%=Bordspel.BESCHRIJVING%>"
                                   name="<%=Bordspel.BESCHRIJVING%>"
                                   value="<%=bordspel.getBeschrijving() == null ? "" : bordspel.getBeschrijving()%>">
                            <%
                                if (bordspelError.beschrijving != null) {
                                    out.print("<span style='color: red;'>" + bordspelError.beschrijving + "</span>");
                                }
                            %>
                        </div>

                    </div>

                    <div class="form-group row">
                        <div class="col-4">
                            <label for="<%=Bordspel.UITGEVER%>"><%=Bordspel.UITGEVER%></label>
                        </div>
                        <div class="col-8">
                            <input class="form-control<%out.print(bordspelError.uitgever != null ? " is-invalid" : "");%>"
                                   type="text"
                                   id="<%=Bordspel.UITGEVER%>"
                                   name="<%=Bordspel.UITGEVER%>"
                                   value="<%=bordspel.getUitgever() == null ? "" : bordspel.getUitgever()%>">
                            <%
                                if (bordspelError.uitgever != null) {
                                    out.print("<span style='color: red;'>" + bordspelError.uitgever + "</span>");
                                }
                            %>
                        </div>

                    </div>

                <div class="form-group row">
                    <div class="col-8 offset-4 row">

                        <div class="col">
                            <input type="submit" class="btn btn-primary w-100" value="Create" />
                        </div>
                        <div class="col">
                            <a href="productenAdmin" class="btn btn-success w-100"><i class="fas fa-sign-out-alt"></i> Back</a>
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
