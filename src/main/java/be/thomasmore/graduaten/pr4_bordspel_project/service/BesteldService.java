package be.thomasmore.graduaten.pr4_bordspel_project.service;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Besteld;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;

import java.util.List;

public interface BesteldService {

    Besteld getBestellingById(long id);
    List<Besteld> getBestellingen();
    Besteld addBestelling(Besteld besteld);

}
