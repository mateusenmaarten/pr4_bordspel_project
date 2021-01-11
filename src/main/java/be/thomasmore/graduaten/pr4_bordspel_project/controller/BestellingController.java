package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


//Deze controller moet User security hebben (ingelogd zijn als user)
@Controller
@RequestMapping(value = "/bestelling")
public class BestellingController {

    @Autowired
    BordspelService bordspelService;

    @Autowired
    GebruikerService service;

    //TypeBesteld : 1 = verkoop, 2 = verhuur

    @RequestMapping("/koopSpel")
    public String koopSpel(HttpServletRequest request, Model model){

        long id = Long.parseLong(request.getParameter("id"));
        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);

        return "koopSpel";
    }

    @RequestMapping("/huurSpel")
    public String huurSpel(HttpServletRequest request, Model model){

        long id = Long.parseLong(request.getParameter("id"));
        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);

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

        //Bestelling aanmaken
        //Type besteld = 1

        //Bordspel ophalen via id
        //Stock aantal_verkoop controleren -> niet meer in stock = uitverkocht melding

        //Gebruiker ophalen die is ingelogd

        //afhaal datum ophalen uit formulier

        //stock aantal_verkoop aanpassen na bevestiging

        return "/products";
    }

    @RequestMapping("/huurProductForm")
    public String huurProductForm(HttpServletRequest request, Model model) {

        //Bestelling aanmaken
        //Type besteld = 2

        //Bordspel ophalen via id
        //Stock aantal_verkoop controleren -> niet meer in stock = uitverkocht melding

        //Gebruiker ophalen die is ingelogd

        //afhaal datum ophalen uit formulier

        //stock aantal_verhuur aanpassen na bevestiging

        return "/products";
    }
}

