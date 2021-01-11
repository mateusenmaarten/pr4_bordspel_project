package be.thomasmore.graduaten.pr4_bordspel_project.repository;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Besteld;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BesteldRepository extends JpaRepository<Besteld, Long> {

    @Query(value = "SELECT b FROM Besteld b")
    List<Besteld> findAllbestellingen();

}
