package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.text.DecimalFormat;
import java.util.List;

@Entity
@Table(name="Bordspel",schema = "java")
public class Bordspel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long BordspelID;
    private String Naam;
    private String Foto;
    private DecimalFormat Prijs;
    private int AantalSpelers;
    private int MinLeeftijd;
    private int Speelduur;
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
        return BordspelID;
    }

    public void setBordspelID(long bordspelID) {
        this.BordspelID = bordspelID;
    }

    public String getNaam() {
        return Naam;
    }

    public void setNaam(String naam) {
        this.Naam = naam;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String foto) {
        this.Foto = foto;
    }

    public DecimalFormat getPrijs() {
        return Prijs;
    }

    public void setPrijs(DecimalFormat prijs) {
        this.Prijs = prijs;
    }

    public int getAantalSpelers() {
        return AantalSpelers;
    }

    public void setAantalSpelers(int aantalSpelers) {
        this.AantalSpelers = aantalSpelers;
    }

    public int getMinLeeftijd() {
        return MinLeeftijd;
    }

    public void setMinLeeftijd(int minLeeftijd) {
        this.MinLeeftijd = minLeeftijd;
    }

    public int getSpeelduur() {
        return Speelduur;
    }

    public void setSpeelduur(int speelduur) {
        this.Speelduur = speelduur;
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
        return Uitgever;
    }

    public void setUitgever(String uitgever) {
        this.Uitgever = uitgever;
    }
}
