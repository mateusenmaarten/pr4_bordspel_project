package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.*;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BesteldService;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


//Deze controller moet User security hebben (ingelogd zijn als user)
@Controller
@RequestMapping(value = "/bestelling")
public class BestellingController {

    @Autowired
    BordspelService bordspelService;

    @Autowired
    GebruikerService service;

    @Autowired
    BesteldService bestellingService;

    //TypeBesteld : 1 = verkoop, 2 = verhuur

    public boolean controleerKoopStock(Bordspel spel){
        Stock stock = spel.getStock();
        if(stock.getAantalVerkoop() > 0){
            stock.setAantalVerkoop(stock.getAantalVerkoop() - 1);
            return true;
        }
        else{
            return false;
        }
    }
    public boolean controleerHuurStock(Bordspel spel){
        Stock stock = spel.getStock();
        if(stock.getAantalVerhuur() > 0){
            stock.setAantalVerhuur(stock.getAantalVerhuur() - 1);
            return true;
        }
        else{
            return false;
        }
    }


    long returnKoopId;
    @RequestMapping("/koopSpel")
    public String koopSpel(HttpServletRequest request, Model model){
        long id;

        if(request.getParameter("id") !=null){
            id = Long.parseLong(request.getParameter("id"));
            returnKoopId = id;
        }
        else{
            id = returnKoopId;
        }

        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);

            model.addAttribute(Besteld.NAME, new Besteld());
            model.addAttribute(BesteldError.NAME, new BesteldError());


        return "koopSpel";
    }

    long returnHuurId;
    @RequestMapping("/huurSpel")
    public String huurSpel(HttpServletRequest request, Model model){
        long id;

        if(request.getParameter("id") != null){
            id = Long.parseLong(request.getParameter("id"));
            returnHuurId = id;
        }
        else{
            id = returnHuurId;
        }

        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);

        model.addAttribute(Besteld.NAME, new Besteld());
        model.addAttribute(BesteldError.NAME, new BesteldError());



        return "huurSpel";
    }

    @RequestMapping("/bevestiging")
    public String bevestiging(){
        //bestelling meegeven voor de afhaaldatum bevestiging
        //Bedankt! Je kan het spel komen afhalen op : (afhaaldatum bestelling)

        return "bevestiging";
    }

    @RequestMapping("/koopProductForm")
    public String koopProductForm(HttpServletRequest request, Model model) {



        Besteld bestelling = new Besteld();
        BesteldError besteldError = new BesteldError();

        //Bestelling aanmaken
        //Type besteld = 1
        TypeBesteld bestellingsType = new TypeBesteld();
        bestellingsType.setId(1);

        bestelling.setTypeBesteld(bestellingsType);


        bestelling.setBordspel((Bordspel) request.getAttribute("bordspel"));

        //Gebruiker ophalen die is ingelogd


        //afhaal datum ophalen uit formulier
        String afhaaldatum = request.getParameter(Besteld.AFHAALDATUM);

        if (!afhaaldatum.isEmpty()) {
            DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("M/d/yyyy");
            LocalDate datum = LocalDate.parse(afhaaldatum, dateFormat);
            bestelling.setAfhaalDatum(datum);
        }
        else{
            besteldError.afhaaldatum = "Vul een afhaaldatum in (Maand/dag/jaar)";
            besteldError.hasErrors = true;
        }

        if (!controleerKoopStock((Bordspel) request.getAttribute("bordspel"))){

            besteldError.stock = "Dit spel is helaas niet beschikbaar";
            besteldError.hasErrors = true;


        }

        //Controle en toevoegen aan DB met redirect
        if (besteldError.hasErrors) {

            long id = ((Bordspel) request.getAttribute("bordspel")).getId();
            Bordspel bordspel = bordspelService.getBordspelById(id);
            model.addAttribute("bordspel", bordspel);

            model.addAttribute(Besteld.NAME, bestelling);
            model.addAttribute(BesteldError.NAME, besteldError);

            return "/koopSpel";
        }

        else {
            bestellingService.addBestelling(bestelling);
            model.addAttribute("bestelling",bestelling);
            return "/bevestiging";
        }

    }

    @RequestMapping("/huurProductForm")
    public String huurProductForm(HttpServletRequest request, Model model) {

        Besteld bestelling = new Besteld();
        BesteldError besteldError = new BesteldError();

        //Bestelling aanmaken
        //Type besteld = 2
        TypeBesteld bestellingsType = new TypeBesteld();
        bestellingsType.setId(2);

        bestelling.setTypeBesteld(bestellingsType);

        bestelling.setBordspel((Bordspel) request.getAttribute("bordspel"));


        //Gebruiker ophalen die is ingelogd


        //afhaal datum ophalen uit formulier
        String afhaaldatum = request.getParameter(Besteld.AFHAALDATUM);

        if (!afhaaldatum.isEmpty()) {
            DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("M/d/yyyy");
            LocalDate datum = LocalDate.parse(afhaaldatum, dateFormat);
            bestelling.setAfhaalDatum(datum);
        }
        else{
            besteldError.afhaaldatum = "Vul een afhaaldatum in (Maand/dag/jaar)";
            besteldError.hasErrors = true;
        }


        //Controle en toevoegen aan DB met redirect
        if (besteldError.hasErrors) {
            model.addAttribute(Besteld.NAME, bestelling);
            model.addAttribute(BesteldError.NAME, besteldError);
            return "huurSpel";
        }
        else {
            //Stock aantal_verkoop controleren -> niet meer in stock = uitverkocht melding anders koop ok
            if (controleerHuurStock((Bordspel) request.getAttribute("bordspel"))){

                bestellingService.addBestelling(bestelling);
                model.addAttribute("bestelling",bestelling);
                return "bevestiging";

            }
            else{
                besteldError.stock = "Dit spel is helaas niet beschikbaar";
                besteldError.hasErrors = true;
                return "huurSpel";
            }
        }
    }
}

