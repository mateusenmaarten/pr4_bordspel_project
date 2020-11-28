package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
@Table(name="Stock",schema = "java")
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long StockID;
    private int AantalVerkoop;
    private int AantalVerhuur;

    @OneToOne
    private Bordspel bordspel;

    public Stock() {
    }

    public long getStockID() {
        return StockID;
    }

    public void setStockID(long stockID) {
        this.StockID = stockID;
    }

    public int getAantalVerkoop() {
        return AantalVerkoop;
    }

    public void setAantalVerkoop(int aantalVerkoop) {
        this.AantalVerkoop = aantalVerkoop;
    }

    public int getAantalVerhuur() {
        return AantalVerhuur;
    }

    public void setAantalVerhuur(int aantalVerhuur) {
        this.AantalVerhuur = aantalVerhuur;
    }

    public Bordspel getBordspel() {
        return bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.bordspel = bordspel;
    }
}
