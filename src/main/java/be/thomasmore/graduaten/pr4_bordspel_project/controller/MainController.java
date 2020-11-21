package be.thomasmore.graduaten.pr4_bordspel_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

}
