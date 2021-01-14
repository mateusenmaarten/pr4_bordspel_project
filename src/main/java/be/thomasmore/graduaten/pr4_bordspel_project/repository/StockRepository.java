package be.thomasmore.graduaten.pr4_bordspel_project.repository;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Stock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StockRepository extends JpaRepository<Stock, Long> {


}
