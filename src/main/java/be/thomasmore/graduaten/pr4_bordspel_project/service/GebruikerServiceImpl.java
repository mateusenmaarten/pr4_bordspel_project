package be.thomasmore.graduaten.pr4_bordspel_project.service;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;
import be.thomasmore.graduaten.pr4_bordspel_project.repository.GebruikerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GebruikerServiceImpl implements GebruikerService {

    @Autowired
    GebruikerRepository repository;

    @Override
    public List<Gebruiker> getGebruikers() {
        return repository.findAll();
    }

    @Override
    public Gebruiker getGebruiker(long id) {
        return repository.getOne(id);
    }

    @Override
    public Gebruiker addGebruiker(Gebruiker gebruiker) {
        gebruiker.setRoles("ROLE_USER");
        return repository.save(gebruiker);
    }


}
