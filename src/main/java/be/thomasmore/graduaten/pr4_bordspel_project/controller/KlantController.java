package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Besteld;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.GebruikerError;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Review;
import be.thomasmore.graduaten.pr4_bordspel_project.security.MyUserDetails;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/klant")
public class KlantController {

    @Autowired
    GebruikerService gebruikerService;

    long userId;

    @RequestMapping("/mijnGegevens")
    public String klantGegevens(HttpServletRequest request, Model model){

        GebruikerError gebruikerError = new GebruikerError();
        model.addAttribute("gebruikerError", gebruikerError);

        long id = Long.parseLong(request.getParameter("id"));
        userId = id;
        Gebruiker gebruiker = gebruikerService.getGebruiker(id);

        model.addAttribute("loggedInGebruiker", gebruiker);

        return "mijnGegevens";
    }

    @RequestMapping("/mijnBestellingen")
    public String klantBestellingen(HttpServletRequest request, Model model){

        long id = Long.parseLong(request.getParameter("id"));
        userId = id;
        Gebruiker gebruiker = gebruikerService.getGebruiker(id);
        model.addAttribute("loggedInGebruiker", gebruiker);

        List<Besteld> mijnBestellingen = gebruiker.getBesteldList();
        model.addAttribute("mijnBestellingen", mijnBestellingen);

        return "mijnBestellingen";
    }

    @RequestMapping("/processGegevensForm")
    public String processGegevensForm(HttpServletRequest request, Model model) {


        Gebruiker gebruiker = gebruikerService.getGebruiker(userId);

        GebruikerError gebruikerError = new GebruikerError();
        model.addAttribute("gebruikerError", gebruikerError);


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
        if (!geboortedatum.isEmpty()) {

            DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("M/d/yyyy");
            try{
                LocalDate datum = LocalDate.parse(geboortedatum, dateFormat);
                gebruiker.setGeboorteDatum(datum);
            }
            catch(Exception e){
                gebruikerError.geboorteDatum = "U moet een geboortedatum invullen (Maand/dag/jaar)";
                gebruikerError.hasErrors = true;
            }


        } else {
            gebruikerError.geboorteDatum = "U moet een geboortedatum invullen (Maand/dag/jaar)";
            gebruikerError.hasErrors = true;
        }

        String woonplaats = request.getParameter(Gebruiker.WOONPLAATS);
        gebruiker.setWoonplaats(woonplaats);
        if (woonplaats.isEmpty()) {
            gebruikerError.woonplaats = "U moet een woonplaats invullen";
            gebruikerError.hasErrors = true;
        }

        String postcode = request.getParameter(Gebruiker.POSTCODE);
        gebruiker.setPostcode(postcode);
        if (postcode.isEmpty()) {
            gebruikerError.postcode = "U moet een postcode invullen";
            gebruikerError.hasErrors = true;
        }

        String straat = request.getParameter(Gebruiker.STRAAT);
        gebruiker.setStraat(straat);
        if (straat.isEmpty()) {
            gebruikerError.straat = "U moet een straat invullen";
            gebruikerError.hasErrors = true;
        }

        String huisnummer = request.getParameter(Gebruiker.HUISNUMMER);
        gebruiker.setHuisnummer(huisnummer);
        if (huisnummer.isEmpty()) {
            gebruikerError.huisnummer = "U moet een huisnummer invullen";
            gebruikerError.hasErrors = true;
        }

        String wachtwoord = request.getParameter(Gebruiker.WACHTWOORD);
        gebruiker.setWachtwoord(wachtwoord);
        if (wachtwoord.isEmpty()) {
            gebruikerError.wachtwoord = "U moet een wachtwoord invullen";
            gebruikerError.hasErrors = true;
        }

        if (gebruikerError.hasErrors) {
            model.addAttribute(Gebruiker.NAME, gebruiker);
            model.addAttribute(GebruikerError.NAME, gebruikerError);

            gebruiker = gebruikerService.getGebruiker(userId);
            model.addAttribute("loggedInGebruiker", gebruiker);

            return "/mijnGegevens";
        } else {
            gebruikerService.addGebruiker(gebruiker);
            return "/index";
        }
    }
}
