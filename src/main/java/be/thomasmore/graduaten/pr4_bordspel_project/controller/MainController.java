package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import Service.BordspelService;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/login")
    public String login() {return "login";}
    @RequestMapping("/registreren")
    public String registreren() {return "registreren";}


    //Maarten : zie Slides 8 Backend - slide 22
    @Autowired
    BordspelService bordspelService;

    @RequestMapping("/bordspelNaam")
    public String dataSingle(HttpServletRequest request, Model model){
        Long id = Long.parseLong((request.getParameter("id")));
        Bordspel bordspel = bordspelService.getBordspelById(id);
        model.addAttribute("bordspel", bordspel);
        return "/bordspelNaam";
    }

}
