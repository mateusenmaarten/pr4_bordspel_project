package be.thomasmore.graduaten.pr4_bordspel_project.controller;


import be.thomasmore.graduaten.pr4_bordspel_project.entity.*;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;


import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {
    @Autowired
    BordspelService bordspelService;

    @Autowired
    GebruikerService service;

    @RequestMapping("/")
    public String index(Model model){
        List<Bordspel> spellen = bordspelService.getBordspellen();
        model.addAttribute("spellen",spellen);
        System.out.print(spellen.get(0).getNaam());
        return "index";
    }

    @RequestMapping("/about")
    public String about() {return "about";}

    @RequestMapping("/login")
    public String login() {return "login";}

    @RequestMapping("/register")
    public String register(Model model)
    {

        model.addAttribute(Gebruiker.NAME, new Gebruiker());

        model.addAttribute(GebruikerError.NAME, new GebruikerError());

        return "register";
    }

    @RequestMapping("/products")
    public String products() {return "products";}

    @RequestMapping("/contact")
    public String contact() {return "contact";}
    //Maarten : zie Slides 8 Backend - slide 22
    //testversie voor te testen


    @RequestMapping("/processRegisterForm")
    public String processRegisterForm(HttpServletRequest request, Model model){

        GebruikerError gebruikerError = new GebruikerError();
        Gebruiker gebruiker = new Gebruiker();

        List<Review> reviews = new ArrayList<>();
        List<Besteld> bestellingen = new ArrayList<>();

        gebruiker.setBesteldList(bestellingen);
        gebruiker.setReviewList(reviews);

        String voornaam = request.getParameter(Gebruiker.VOORNAAM);
            gebruiker.setVoornaam(voornaam);
            if (voornaam.isEmpty()) {
                gebruikerError.voornaam = "U moet een voornaam invullen!";
                gebruikerError.hasErrors = true;
            }

        String achternnaam = request.getParameter(Gebruiker.ACHTERNAAM);
            gebruiker.setAchternaam(achternnaam);
            if (achternnaam.isEmpty()) {
                gebruikerError.achternaam = "U moet een achternaam invullen!";
                gebruikerError.hasErrors = true;
            }

        String email = request.getParameter(Gebruiker.EMAIL);
        gebruiker.setEmail(email);

        int posAt = email.indexOf("@");
        int posDot = (posAt != -1) ? email.substring(posAt).indexOf(".") : -1;
        if (email.isEmpty()) {
            gebruikerError.email = "U moet een email invullen!";
            gebruikerError.hasErrors = true;
        } else if (posAt == -1 || posDot == -1 || posDot > posAt) {
            gebruikerError.email = "Deze email is niet geldig!";
            gebruikerError.hasErrors = true;
        }

        String geboortedatum = request.getParameter(Gebruiker.GEBOORTEDATUM);
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("M/d/yyyy");
        LocalDate datum = LocalDate.parse(geboortedatum, dateFormat);
        gebruiker.setGeboorteDatum(datum);
        if (geboortedatum.isEmpty()){
            gebruikerError.geboorteDatum = "U moet een geboortedatum invullen (M/d/yy)";
            gebruikerError.hasErrors = true;
        }

        String woonplaats = request.getParameter(Gebruiker.WOONPLAATS);
        gebruiker.setWoonplaats(woonplaats);
        if (geboortedatum.isEmpty()){
            gebruikerError.woonplaats = "U moet een woonplaats invullen";
            gebruikerError.hasErrors = true;
        }

        String postcode = request.getParameter(Gebruiker.POSTCODE);
        gebruiker.setPostcode(postcode);
        if (geboortedatum.isEmpty()){
            gebruikerError.postcode = "U moet een postcode invullen";
            gebruikerError.hasErrors = true;
        }

        String straat = request.getParameter(Gebruiker.STRAAT);
        gebruiker.setStraat(straat);
        if (geboortedatum.isEmpty()){
            gebruikerError.straat = "U moet een straat invullen";
            gebruikerError.hasErrors = true;
        }

        String huisnummer = request.getParameter(Gebruiker.HUISNUMMER);
        gebruiker.setHuisnummer(huisnummer);
        if (geboortedatum.isEmpty()){
            gebruikerError.huisnummer = "U moet een huisnummer invullen";
            gebruikerError.hasErrors = true;
        }
        String wachtwoord = request.getParameter(Gebruiker.WACHTWOORD);
        gebruiker.setWachtwoord(wachtwoord);
        if (wachtwoord.isEmpty()){
            gebruikerError.wachtwoord = "U moet een wachtwoord invullen";
            gebruikerError.hasErrors = true;
        }

        if (gebruikerError.hasErrors) {
            model.addAttribute(Gebruiker.NAME, gebruiker);
            model.addAttribute(GebruikerError.NAME, gebruikerError);
            return "/register";
        } else {
            service.addGebruiker(gebruiker);
            model.addAttribute("gebruikers", service.getGebruikers());
            return "/index";
        }

    }


}
