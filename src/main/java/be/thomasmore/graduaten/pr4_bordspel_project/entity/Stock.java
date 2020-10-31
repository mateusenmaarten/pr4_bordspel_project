package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long stockID;
    private int aantalVerkoop;
    private int aantalVerhuur;

    @OneToOne
    private Bordspel bordspel;

    public Stock() {
    }

    public long getStockID() {
        return stockID;
    }

    public void setStockID(long stockID) {
        this.stockID = stockID;
    }

    public int getAantalVerkoop() {
        return aantalVerkoop;
    }

    public void setAantalVerkoop(int aantalVerkoop) {
        this.aantalVerkoop = aantalVerkoop;
    }

    public int getAantalVerhuur() {
        return aantalVerhuur;
    }

    public void setAantalVerhuur(int aantalVerhuur) {
        this.aantalVerhuur = aantalVerhuur;
    }

    public Bordspel getBordspel() {
        return bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.bordspel = bordspel;
    }
}
