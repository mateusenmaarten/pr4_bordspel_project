<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<html>
    <head>
        <title>Bordspellen</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
<body>
<jsp:include page="navigatiebar.jsp"/>
<p>
    test test dit is de laatste versie
    test test dit is een push van hans geeeertttsss

    <a href="/bordspelNaam?id=1">Bordspelnaam</a>
    <h1>
        Beschrijving
    </h1>
    <%
        Bordspel bordspel = (Bordspel) request.getAttribute("bordspel");
        out.print("<p>Beschrijving bordspel: " + bordspel.getBeschrijving() + "</p>");
    %>
</p>
</body>
</html>
