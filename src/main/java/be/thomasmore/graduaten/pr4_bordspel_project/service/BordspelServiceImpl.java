package be.thomasmore.graduaten.pr4_bordspel_project.service;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import be.thomasmore.graduaten.pr4_bordspel_project.repository.BordspelRepository;

import java.util.List;

@Service
public class BordspelServiceImpl implements BordspelService {

    @Autowired
    BordspelRepository bordspelRepository;

    @Override
    public Bordspel getBordspelById(long id)
    {
        return bordspelRepository.getOne(id);
    }

    @Override
    public List<Bordspel> getBordspellen()
    {
        return bordspelRepository.findAllboardgames();
    }

    @Override
    public Bordspel addBordspel(Bordspel bordspel)
    {
        return bordspelRepository.save(bordspel);
    }
}
