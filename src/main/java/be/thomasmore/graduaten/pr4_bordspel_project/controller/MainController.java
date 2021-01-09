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


    public boolean tryParseDouble(String value) {
        try {
            Double.parseDouble(value);
            return true;

        } catch (NumberFormatException e) {

            return false;
        }
    }
    public boolean tryParseInt(String value) {
        try {
            Integer.parseInt(value);
            return true;

        } catch (NumberFormatException e) {

            return false;
        }
    }



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

    @RequestMapping("/details")
    public String details(){
        return "details"; }

    @RequestMapping("/products")
    public String products(Model model) {
        List<Bordspel> spellen = bordspelService.getBordspellen();
        model.addAttribute("spellen",spellen);
        return "products";}

    @RequestMapping("/productenAdmin")
    public String Producten(Model model) {

        List<Bordspel> spellen = bordspelService.getBordspellen();
        model.addAttribute("spellen",spellen);

        return "productenAdmin";}

    @RequestMapping("/gebruikersAdmin")
    public String Gebruikers(Model model){
        List<Gebruiker> gebruikers = service.getGebruikers();
        model.addAttribute("gebruikers", gebruikers);
        return "gebruikersAdmin";
    }

    @RequestMapping("/createProduct")
    public String Create(Model model) {

        model.addAttribute(Bordspel.NAME, new Bordspel());

        model.addAttribute(BordspelError.NAME, new BordspelError());
        return "createProduct";}

    @RequestMapping("/contact")
    public String contact() {return "contact";}
    //Maarten : zie Slides 8 Backend - slide 22
    //testversie voor te testen


    @RequestMapping("/processCreateProductForm")
    public String processCreateProductForm(HttpServletRequest request, Model model) {

        Bordspel bordspel = new Bordspel();
        BordspelError bordspelError = new BordspelError();

        String naam = request.getParameter(Bordspel.NAAM);
        bordspel.setNaam(naam);
        if (naam.isEmpty()) {
            bordspelError.naam = "Vul een naam in";
            bordspelError.hasErrors = true;
        }

        String prijs = request.getParameter(Bordspel.PRIJS);
        if(!prijs.isEmpty()){

            if(tryParseDouble(prijs)){

                bordspel.setPrijs(Double.parseDouble(prijs));
            }
            else{
                bordspelError.prijs = "Vul een geldige prijs in";
                bordspelError.hasErrors = true;
            }

        }
        else{
            bordspelError.prijs = "Vul een prijs in";
            bordspelError.hasErrors = true;
        }


        String aantalSpelers = request.getParameter(Bordspel.AANTALSPELERS);
        bordspel.setAantalSpelers(aantalSpelers);
        if (aantalSpelers.isEmpty()) {
            bordspelError.aantalSpelers = "Vul het aantal spelers in";
            bordspelError.hasErrors = true;
        }

        String foto = request.getParameter(Bordspel.FOTO);
        bordspel.setImagePath(foto);
        if (foto.isEmpty()) {
            bordspelError.foto = "Vul het foto path in (resources/images/[fotonaam].png";
            bordspelError.hasErrors = true;
        }

        String minimumLeeftijd = request.getParameter(Bordspel.MINIMUMLEEFTIJD);

        if(!minimumLeeftijd.isEmpty()){
            if(tryParseInt(minimumLeeftijd)){
                bordspel.setMinLeeftijd(Integer.parseInt(minimumLeeftijd));
            }
            else{
                bordspelError.minimumLeeftijd = "Vul een geldige leeftijd in";
                bordspelError.hasErrors = true;
            }
        }
        else{
            bordspelError.minimumLeeftijd = "Vul een minimum leeftijd in";
            bordspelError.hasErrors = true;
        }

        String speelduur = request.getParameter(Bordspel.SPEELDUUR);
        bordspel.setSpeelduur(speelduur);
        if (speelduur.isEmpty()) {
            bordspelError.speelduur = "Vul een speelduur in";
            bordspelError.hasErrors = true;
        }

        String taal = request.getParameter(Bordspel.TAAL);
        bordspel.setTaal(taal);
        if (taal.isEmpty()) {
            bordspelError.taal = "Vul een taal in";
            bordspelError.hasErrors = true;
        }

        String beschrijving = request.getParameter(Bordspel.BESCHRIJVING);
        bordspel.setBeschrijving(beschrijving);
        if (beschrijving.isEmpty()) {
            bordspelError.beschrijving = "Vul een beschrijving in";
            bordspelError.hasErrors = true;
        }

        String uitgever = request.getParameter(Bordspel.UITGEVER);
        bordspel.setUitgever(uitgever);
        if (uitgever.isEmpty()) {
            bordspelError.uitgever = "Vul een uitgever in";
            bordspelError.hasErrors = true;
        }

        if (bordspelError.hasErrors) {
            model.addAttribute(Bordspel.NAME, bordspel);
            model.addAttribute(BordspelError.NAME, bordspelError);
            return "/createProduct";
        } else {
            bordspelService.addBordspel(bordspel);
            model.addAttribute("bordspellen", bordspelService.getBordspellen());
            return "/productenAdmin";
        }


    }



    @RequestMapping("/processRegisterForm")
    public String processRegisterForm(HttpServletRequest request, Model model){

        Gebruiker gebruiker = new Gebruiker();
        GebruikerError gebruikerError = new GebruikerError();

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
        if(!geboortedatum.isEmpty()){

            DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("M/d/yyyy");
            LocalDate datum = LocalDate.parse(geboortedatum, dateFormat);
            gebruiker.setGeboorteDatum(datum);

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
