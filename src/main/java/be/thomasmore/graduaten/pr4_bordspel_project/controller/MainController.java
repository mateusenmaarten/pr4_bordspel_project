package be.thomasmore.graduaten.pr4_bordspel_project.controller;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.*;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
    public String index(){

        return "index";
    }

    @RequestMapping("/login")
    public String login() {return "login";}

    @RequestMapping("/register")
    public String register(Model model)
    {

        model.addAttribute(Gebruiker.NAME, new Gebruiker());

        model.addAttribute(GebruikerError.NAME, new GebruikerError());

        return "register";
    }

    @RequestMapping("/details")
    public String details(HttpServletRequest request, Model model){

        long id = Long.parseLong(request.getParameter("id"));
        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);

        return "details";}

    @RequestMapping("/products")
    public String products(Model model) {
        
        List<Bordspel> spellen = bordspelService.getBordspellen();
        model.addAttribute("spellen",spellen);
        return "products";}



    @RequestMapping("/contact")
    public String contact() {return "contact";}
    //Maarten : zie Slides 8 Backend - slide 22
    //testversie voor te testen


    @RequestMapping("/processRegisterForm")
    public String processRegisterForm(HttpServletRequest request, Model model){

        Gebruiker gebruiker = new Gebruiker();
        GebruikerError gebruikerError = new GebruikerError();

        List<Review> reviews = new ArrayList<>();
        List<Besteld> bestellingen = new ArrayList<>();

        gebruiker.setBesteldList(bestellingen);
        gebruiker.setReviewList(reviews);

        getUserData(request, gebruiker, gebruikerError);

        String wachtwoord = request.getParameter(Gebruiker.WACHTWOORD);
        gebruiker.setWachtwoord(new BCryptPasswordEncoder().encode(wachtwoord));

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

    static void getUserData(HttpServletRequest request, Gebruiker gebruiker, GebruikerError gebruikerError) {
        String voornaam = request.getParameter(Gebruiker.VOORNAAM);
        gebruiker.setVoornaam(voornaam);
        if (voornaam.isEmpty()) {
            gebruikerError.voornaam = "U moet een voornaam invullen!";
            gebruikerError.hasErrors = true;
        }

        String achternaam = request.getParameter(Gebruiker.ACHTERNAAM);
        gebruiker.setAchternaam(achternaam);
        if (achternaam.isEmpty()) {
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
        if(!geboortedatum.isEmpty()){
            DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("M/d/yyyy");
            try{
                LocalDate datum = LocalDate.parse(geboortedatum, dateFormat);
                gebruiker.setGeboorteDatum(datum);
            }
            catch(Exception e){
                gebruikerError.geboorteDatum = "geboortedatum invullen als (Maand/dag/jaar) aub";
                gebruikerError.hasErrors = true;
            }
        }
        else{
            gebruikerError.geboorteDatum = "U moet een geboortedatum invullen (Maand/dag/jaar)";
            gebruikerError.hasErrors = true;
        }

        String woonplaats = request.getParameter(Gebruiker.WOONPLAATS);
        gebruiker.setWoonplaats(woonplaats);
        if (woonplaats.isEmpty()){
            gebruikerError.woonplaats = "U moet een woonplaats invullen";
            gebruikerError.hasErrors = true;
        }

        String postcode = request.getParameter(Gebruiker.POSTCODE);
        gebruiker.setPostcode(postcode);
        if (postcode.isEmpty()){
            gebruikerError.postcode = "U moet een postcode invullen";
            gebruikerError.hasErrors = true;
        }

        String straat = request.getParameter(Gebruiker.STRAAT);
        gebruiker.setStraat(straat);
        if (straat.isEmpty()){
            gebruikerError.straat = "U moet een straat invullen";
            gebruikerError.hasErrors = true;
        }

        String huisnummer = request.getParameter(Gebruiker.HUISNUMMER);
        gebruiker.setHuisnummer(huisnummer);
        if (huisnummer.isEmpty()){
            gebruikerError.huisnummer = "U moet een huisnummer invullen";
            gebruikerError.hasErrors = true;
        }

    }


}
