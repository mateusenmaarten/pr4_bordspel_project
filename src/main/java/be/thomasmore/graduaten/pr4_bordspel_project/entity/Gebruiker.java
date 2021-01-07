package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import javax.servlet.http.PushBuilder;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name="Gebruiker", schema = "java")
public class Gebruiker {

    public static final String NAME = "gebruiker";
    public static final String VOORNAAM = "Voornaam";
    public static final String ACHTERNAAM = "Achternaam";
    public static final String EMAIL = "Email";
    public static final String WACHTWOORD = "Wachtwoord";
    public static final String GEBOORTEDATUM = "GeboorteDatum";
    public static final String WOONPLAATS = "Woonplaats";
    public static final String POSTCODE = "Postcode";
    public static final String STRAAT = "Straat";
    public static final String HUISNUMMER = "Huisnummer";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String voornaam;
    private String achternaam;
    private String email;
    private String wachtwoord;
    private String roles;
    private LocalDate geboorteDatum;
    private String woonplaats;
    private String postcode;
    private String straat;
    private String huisnummer;
    private boolean isAdmin;

    @OneToMany
    private List<Review> reviewList;

    @OneToMany
    private List<Besteld> besteldList;

//    public Gebruiker(){
//        this.voornaam ="";
//        this.wachtwoord="";
//        this.achternaam = "";
//        this.email = "";
//        this.geboorteDatum = null;
//        this.woonplaats = "";
//        this.postcode = "";
//        this.straat = "";
//        this.huisnummer = "";
//        this.isAdmin = false;
//
//    }

    public Gebruiker(String voornaam, String achternaam, String email,
                     LocalDate geboorteDatum, String woonplaats, String postcode,
                     String straat, String huisnummer, boolean isAdmin, String wachtwoord)
    {
        this.voornaam = voornaam;
        this.achternaam = achternaam;
        this.email = email;
        this.geboorteDatum = geboorteDatum;
        this.woonplaats = woonplaats;
        this.postcode = postcode;
        this.straat = straat;
        this.huisnummer = huisnummer;
        this.isAdmin = isAdmin;
        this.wachtwoord = wachtwoord;
    }

    public Gebruiker(){

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

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getVoornaam() {
        return voornaam;
    }

    public void setVoornaam(String voornaam) {
        this.voornaam = voornaam;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getWachtwoord(){return wachtwoord;}

    public void  setWachtwoord(String wachtwoord){this.wachtwoord = wachtwoord;}

    public String getAchternaam() {
        return achternaam;
    }

    public void setAchternaam(String achternaam) {
        this.achternaam = achternaam;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getGeboorteDatum() {
        return geboorteDatum;
    }

    public void setGeboorteDatum(LocalDate geboorteDatum) {
        this.geboorteDatum = geboorteDatum;
    }

    public String getWoonplaats() {
        return woonplaats;
    }

    public void setWoonplaats(String woonplaats) {
        this.woonplaats = woonplaats;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getStraat() {
        return straat;
    }

    public void setStraat(String straat) {
        this.straat = straat;
    }

    public String getHuisnummer() {
        return huisnummer;
    }

    public void setHuisnummer(String huisnummer) {
        this.huisnummer = huisnummer;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }
}
