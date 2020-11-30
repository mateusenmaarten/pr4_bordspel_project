package be.thomasmore.graduaten.pr4_bordspel_project.controller;


import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import be.thomasmore.graduaten.pr4_bordspel_project.service.BordspelService;

import javax.servlet.http.HttpServletRequest;
import java.io.Console;

@Controller
public class MainController {
    @Autowired
    BordspelService bordspelService;

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/about")
    public String about() {return "about";}

    @RequestMapping("/login")
    public String login() {return "login";}

    @RequestMapping("/products")
    public String products() {return "products";}

    @RequestMapping("/contact")
    public String contact() {return "contact";}
    //Maarten : zie Slides 8 Backend - slide 22
    //testversie voor te testen

}
