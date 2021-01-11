package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name="Besteld", schema = "java")
public class Besteld {
    public static final String NAME = "besteld";
    public static final String AFHAALDATUM = "Afhaaldatum: ";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;


    private LocalDate afhaalDatum;

    @ManyToOne
    private TypeBesteld typeBesteld;

    @ManyToOne
    private Gebruiker gebruiker;

    @ManyToOne
    private Bordspel bordspel;

    public Besteld() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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
