package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.text.DecimalFormat;
import java.util.List;

@Entity
public class Bordspel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long BordspelID;
    private String Naam;
    private String Foto;
    private DecimalFormat Prijs;
    private int AantalSpelers;
    private int MinLeeftijd;
    private int Speeltijd;
    private String Taal;
    private String Beschrijving;
    private String Uitgever;

    @OneToMany
    private List<Review> reviewList;

    @OneToMany
    private List<Besteld> besteldList;

    @OneToMany
    private List<BordspelCategorie> bordspelCategorieList;

    @OneToOne
    private Stock stock;



    public Bordspel() {
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

    public List<BordspelCategorie> getBordspelCategorieList() {
        return bordspelCategorieList;
    }

    public void setBordspelCategorieList(List<BordspelCategorie> bordspelCategorieList) {
        this.bordspelCategorieList = bordspelCategorieList;
    }

    public Stock getStock() {
        return stock;
    }

    public void setStock(Stock stock) {
        this.stock = stock;
    }

    public long getBordspelID() {
        return bordspelID;
    }

    public void setBordspelID(long bordspelID) {
        this.bordspelID = bordspelID;
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public DecimalFormat getPrijs() {
        return prijs;
    }

    public void setPrijs(DecimalFormat prijs) {
        this.prijs = prijs;
    }

    public int getAantalSpelers() {
        return aantalSpelers;
    }

    public void setAantalSpelers(int aantalSpelers) {
        this.aantalSpelers = aantalSpelers;
    }

    public int getMinLeeftijd() {
        return minLeeftijd;
    }

    public void setMinLeeftijd(int minLeeftijd) {
        this.minLeeftijd = minLeeftijd;
    }

    public int getSpeeltijd() {
        return speeltijd;
    }

    public void setSpeeltijd(int speeltijd) {
        this.speeltijd = speeltijd;
    }

    public String getTaal() {
        return Taal;
    }

    public void setTaal(String taal) {
        Taal = taal;
    }

    public String getBeschrijving() {
        return Beschrijving;
    }

    public void setBeschrijving(String Beschrijving) {
        this.Beschrijving = Beschrijving;
    }

    public String getUitgever() {
        return uitgever;
    }

    public void setUitgever(String uitgever) {
        this.uitgever = uitgever;
    }
}
