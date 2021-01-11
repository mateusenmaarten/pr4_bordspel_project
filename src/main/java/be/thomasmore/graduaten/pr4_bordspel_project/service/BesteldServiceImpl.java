package be.thomasmore.graduaten.pr4_bordspel_project.service;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Besteld;
import be.thomasmore.graduaten.pr4_bordspel_project.repository.BesteldRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BesteldServiceImpl implements BesteldService {

    @Autowired
    BesteldRepository besteldRepository;

    @Override
    public Besteld getBestellingById(long id) {
        return besteldRepository.getOne(id);
    }

    @Override
    public List<Besteld> getBestellingen() {
        return besteldRepository.findAllbestellingen();
    }

    @Override
    public Besteld addBestelling(Besteld besteld) {
        return besteldRepository.save(besteld);
    }
}
