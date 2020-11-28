package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
@Table(name="Review",schema = "java")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ReviewID;
    private String Beschrijving;

    @ManyToOne
    private Gebruiker gebruiker;

    @ManyToOne
    private Bordspel bordspel;

    public Review() {
    }

    public long getReviewID() {
        return ReviewID;
    }

    public void setReviewID(long reviewID) {
        this.ReviewID = reviewID;
    }

    public String getBeschrijving() {
        return Beschrijving;
    }

    public void setBeschrijving(String beschrijving) {
        this.Beschrijving = beschrijving;
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
