package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String beschrijving;

    @ManyToOne
    private Gebruiker gebruiker;

    @ManyToOne
    private Bordspel bordspel;

    public Review() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBeschrijving() {
        return beschrijving;
    }

    public void setBeschrijving(String beschrijving) {
        this.beschrijving = beschrijving;
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
