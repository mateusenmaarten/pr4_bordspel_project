package be.thomasmore.graduaten.pr4_bordspel_project.service;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;

import java.util.List;

public interface GebruikerService {
    List<Gebruiker> getGebruikers();
    Gebruiker addGebruiker(Gebruiker gebruiker);
}
