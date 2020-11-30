package be.thomasmore.graduaten.pr4_bordspel_project.controller;


import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;

import javax.servlet.http.HttpServletRequest;
import java.io.Console;
import java.util.List;

@Controller
public class MainController {
    @Autowired
    BordspelService bordspelService;

    @RequestMapping("/")
    public String index(){
//        List<Bordspel> spellen = bordspelService.getBordspellen();
//        model.addAttribute("spellen",spellen);

        return "index";
    }

    @RequestMapping("/login")
    public String login() {return "login";}

    @RequestMapping("/registreren")
    public String registreren() {return "registreren";}

    //Maarten : zie Slides 8 Backend - slide 22
    //testversie voor te testen

}
