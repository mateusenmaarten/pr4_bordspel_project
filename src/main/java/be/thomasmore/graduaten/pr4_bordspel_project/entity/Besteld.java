package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name="Besteld",schema = "java")
public class Besteld {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long BesteldID;

    private LocalDate AfhaalDatum;

    @ManyToOne
    private TypeBesteld TypeBesteld;

    @ManyToOne
    private Gebruiker Gebruiker;

    @ManyToOne
    private Bordspel Bordspel;

    public Besteld() {
    }

    public long getBesteldID() {
        return BesteldID;
    }

    public void setBesteldID(long besteldID) {
        this.BesteldID = besteldID;
    }

    public LocalDate getAfhaalDatum() {
        return AfhaalDatum;
    }

    public void setAfhaalDatum(LocalDate afhaalDatum) {
        this.AfhaalDatum = afhaalDatum;
    }

    public TypeBesteld getTypeBesteld() {
        return TypeBesteld;
    }

    public void setTypeBesteld(TypeBesteld typeBesteld) {
        this.TypeBesteld = typeBesteld;
    }

    public Gebruiker getGebruiker() {
        return Gebruiker;
    }

    public void setGebruiker(Gebruiker gebruiker) {
        this.Gebruiker = gebruiker;
    }

    public Bordspel getBordspel() {
        return Bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.Bordspel = bordspel;
    }
}
