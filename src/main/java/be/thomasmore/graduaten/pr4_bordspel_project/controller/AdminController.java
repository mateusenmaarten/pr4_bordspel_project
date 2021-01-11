package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.BordspelError;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

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

    @Autowired
    BordspelService bordspelService;

    @Autowired
    GebruikerService service;


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

    @RequestMapping("/gebruikersDetailAdmin")
    public String Gebruiker(HttpServletRequest request, Model model){

        long id = Long.parseLong(request.getParameter("id"));

        Gebruiker gebruiker = service.getGebruiker(id);
        model.addAttribute("selectedgebruiker", gebruiker);
        return "gebruikersDetailAdmin";
    }

    @RequestMapping("/editproduct")
    public String Edit(HttpServletRequest request, Model model){

        long id = Long.parseLong(request.getParameter("id"));
        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);

        return "editproduct";}


    @RequestMapping("/createProduct")
    public String Create(Model model) {

        model.addAttribute(Bordspel.NAME, new Bordspel());

        model.addAttribute(BordspelError.NAME, new BordspelError());
        return "createProduct";}


    @RequestMapping("/processEditProductForm")
    public String processEditProductForm(HttpServletRequest request, Model model) {

        return "/productenAdmin";
    }

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
}

