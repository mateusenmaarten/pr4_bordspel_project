package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name="Gebruiker",schema = "java")
public class Gebruiker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long GebruikerID;
    private String Voornaam;
    private String Achternaam;
    private String Email;
    private LocalDate GeboorteDatum;
    private String Woonplaats;
    private String Postcode;
    private String Straat;
    private String Huisnummer;
    private boolean IsAdmin;

    @OneToMany
    private List<Review> reviewList;

    @OneToMany
    private List<Besteld> besteldList;

    public Gebruiker() {
    }

    public List<Review> getReviewList() {
        return reviewList;
    }

    public void setReviewList(List<Review> reviewList) {
        this.reviewList = reviewList;
    }

    public List<Besteld> getBesteldList() {
        return besteldList;
    }

    public void setBesteldList(List<Besteld> besteldList) {
        this.besteldList = besteldList;
    }

    public long getGebruikerID() {
        return GebruikerID;
    }

    public void setGebruikerID(long gebruikerID) {
        this.GebruikerID = gebruikerID;
    }

    public String getVoornaam() {
        return Voornaam;
    }

    public void setVoornaam(String voornaam) {
        this.Voornaam = voornaam;
    }

    public String getAchternaam() {
        return Achternaam;
    }

    public void setAchternaam(String achternaam) {
        this.Achternaam = achternaam;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    public LocalDate getGeboorteDatum() {
        return GeboorteDatum;
    }

    public void setGeboorteDatum(LocalDate geboorteDatum) {
        this.GeboorteDatum = geboorteDatum;
    }

    public String getWoonplaats() {
        return Woonplaats;
    }

    public void setWoonplaats(String woonplaats) {
        this.Woonplaats = woonplaats;
    }

    public String getPostcode() {
        return Postcode;
    }

    public void setPostcode(String postcode) {
        this.Postcode = postcode;
    }

    public String getStraat() {
        return Straat;
    }

    public void setStraat(String straat) {
        this.Straat = straat;
    }

    public String getHuisnummer() {
        return Huisnummer;
    }

    public void setHuisnummer(String huisnummer) {
        this.Huisnummer = huisnummer;
    }

    public boolean isAdmin() {
        return IsAdmin;
    }

    public void setAdmin(boolean admin) {
        IsAdmin = admin;
    }
}
