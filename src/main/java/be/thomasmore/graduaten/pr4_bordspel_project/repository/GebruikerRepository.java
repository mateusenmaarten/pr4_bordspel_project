package be.thomasmore.graduaten.pr4_bordspel_project.repository;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Gebruiker;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.swing.text.html.Option;
import java.util.Optional;

@Repository
public interface GebruikerRepository extends JpaRepository<Gebruiker, Long> {
    Optional<Gebruiker> findByEmail(String eMail);
}
