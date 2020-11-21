package Service;


import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;

import java.util.List;

public interface BordspelService {
    Bordspel getBordspelById(long id);
    List<Bordspel> getBordspellen();
    Bordspel addBordspel(Bordspel bordspel);
}
