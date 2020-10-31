package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Besteld {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long besteldID;

    private LocalDate afhaalDatum;

    @ManyToOne
    private TypeBesteld typeBesteld;

    @ManyToOne
    private Gebruiker gebruiker;

    @ManyToOne
    private Bordspel bordspel;

    public Besteld() {
    }

    public long getBesteldID() {
        return besteldID;
    }

    public void setBesteldID(long besteldID) {
        this.besteldID = besteldID;
    }

    public LocalDate getAfhaalDatum() {
        return afhaalDatum;
    }

    public void setAfhaalDatum(LocalDate afhaalDatum) {
        this.afhaalDatum = afhaalDatum;
    }

    public TypeBesteld getTypeBesteld() {
        return typeBesteld;
    }

    public void setTypeBesteld(TypeBesteld typeBesteld) {
        this.typeBesteld = typeBesteld;
    }

    public Gebruiker getGebruiker() {
        return gebruiker;
    }

    public void setGebruiker(Gebruiker gebruiker) {
        this.gebruiker = gebruiker;
    }

    public Bordspel getBordspel() {
        return bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.bordspel = bordspel;
    }
}
