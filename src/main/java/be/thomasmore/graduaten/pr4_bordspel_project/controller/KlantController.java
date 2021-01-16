package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Besteld;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.GebruikerError;
import be.thomasmore.graduaten.pr4_bordspel_project.service.GebruikerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
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
    @RequestMapping(method = RequestMethod.GET)
    public String index(){

        return "index";
    }

    @RequestMapping("/processGegevensForm")
    public String processGegevensForm(HttpServletRequest request, Model model) {


        Gebruiker gebruiker = gebruikerService.getGebruiker(userId);

        GebruikerError gebruikerError = new GebruikerError();
        model.addAttribute("gebruikerError", gebruikerError);


        MainController.getUserData(request, gebruiker, gebruikerError);

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
            return "redirect:/";
        }
    }
}
