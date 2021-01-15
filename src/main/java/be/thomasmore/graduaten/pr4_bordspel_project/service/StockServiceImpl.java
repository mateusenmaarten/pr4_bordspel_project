package be.thomasmore.graduaten.pr4_bordspel_project.service;

import be.thomasmore.graduaten.pr4_bordspel_project.entity.Bordspel;
import be.thomasmore.graduaten.pr4_bordspel_project.entity.Stock;
import be.thomasmore.graduaten.pr4_bordspel_project.repository.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StockServiceImpl implements StockService{

    @Autowired
    StockRepository stockRepository;

    @Override
    public void addStock(Stock stock) {
        stockRepository.save(stock);
    }

    @Override
    public void deleteStock(Stock stock) {
        stockRepository.delete(stock);
    }
}
