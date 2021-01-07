package be.thomasmore.graduaten.pr4_bordspel_project.entity;
import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="Bordspel", schema = "java")
public class Bordspel {

    public static final String NAME = "bordspel";
    public static final String NAAM = "naam";
    public static final String PRIJS = "prijs";
    public static final String AANTALSPELERS = "aantalSpelers";
    public static final String FOTO = "foto";
    public static final String MINIMUMLEEFTIJD = "minimumLeeftijd";
    public static final String SPEELDUUR = "speelduur";
    public static final String TAAL = "taal";
    public static final String BESCHRIJVING = "beschrijving";
    public static final String UITGEVER = "uitgever";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String naam;
    private String image_path;
    private double prijs;
    private String aantalSpelers;
    private int minLeeftijd;
    private String speelduur;
    private String taal;
    private String beschrijving;
    private String uitgever;

    @OneToMany
    private List<Review> reviewList;

    @OneToMany
    private List<Besteld> besteldList;

    @OneToMany
    private List<BordspelCategorie> bordspelCategorieList;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "stock_id", referencedColumnName = "id")
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

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public String getImagePath() {
        return image_path;
    }

    public void setImagePath(String image_path) {
        this.image_path = image_path;
    }

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {
        this.prijs = prijs;
    }

    public String getAantalSpelers() {
        return aantalSpelers;
    }

    public void setAantalSpelers(String aantalSpelers) {
        this.aantalSpelers = aantalSpelers;
    }

    public int getMinLeeftijd() {
        return minLeeftijd;
    }

    public void setMinLeeftijd(int minLeeftijd) {
        this.minLeeftijd = minLeeftijd;
    }

    public String getSpeelduur() {
        return speelduur;
    }

    public void setSpeelduur(String speelduur) {
        this.speelduur = speelduur;
    }

    public String getTaal() {
        return taal;
    }

    public void setTaal(String taal) {
        this.taal = taal;
    }

    public String getBeschrijving() {
        return beschrijving;
    }

    public void setBeschrijving(String Beschrijving) {
        this.beschrijving = Beschrijving;
    }

    public String getUitgever() {
        return uitgever;
    }

    public void setUitgever(String uitgever) {
        this.uitgever = uitgever;
    }
}
