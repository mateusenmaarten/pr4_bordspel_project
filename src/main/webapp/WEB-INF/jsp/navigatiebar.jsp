<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="be.thomasmore.graduaten.pr4_bordspel_project.security.MyUserDetails" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item">
                        <a href="/login" class="nav-link">Login</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a href="/logout" class="nav-link">logout</a>
                    </li>
                </sec:authorize>




                <sec:authorize access="hasRole('USER')">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownKlant" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Mijn gegevens
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownKlant">
                            <%
                                Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                                if(principal instanceof MyUserDetails){
                                    long userId = ((MyUserDetails)principal).getId();
                                    out.print("<a href=\"/klant/mijnGegevens?id=" +userId + "\" class=\"nav-link text-dark\" >Mijn gegevens</a>");
                                    out.print("<a href=\"/klant/mijnBestellingen?id=" +userId + "\" class=\"nav-link text-dark\" >Mijn bestellingen</a>");
                                }
                            %>

                            <div class="dropdown-divider"></div>

                        </div>
                    </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Content Management
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a href="/admin/productenAdmin" class="nav-link text-dark" >Producten</a>
                            <a href="/admin/gebruikersAdmin" class="nav-link text-dark" >Gebruikers</a>
                            <a href="/admin/bestellingenAdmin" class="nav-link text-dark" >Bestellingen</a>
                            <div class="dropdown-divider"></div>

                        </div>
                    </li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>

<section id="actions" class="mb-5 mt-5 bg-light">
    <div class="container">
        <div class="row"></div>
    </div>
</section>