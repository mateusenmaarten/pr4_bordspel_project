package repository;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BordspelRepository extends JpaRepository<Bordspel, Long> {
}
