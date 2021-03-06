package be.thomasmore.graduaten.pr4_bordspel_project.entity;
import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="Bordspel", schema = "java")
public class Bordspel {

    public static final String NAME = "bordspel";
    public static final String NAAM = "Naam van het spel";
    public static final String PRIJS = "Prijs";
    public static final String AANTALSPELERS = "Aantal spelers";
    public static final String FOTO = "Naam van foto in png";
    public static final String MINIMUMLEEFTIJD = "Minimum leeftijd";
    public static final String SPEELDUUR = "Speelduur";
    public static final String TAAL = "Taal";
    public static final String BESCHRIJVING = "Beschrijving";
    public static final String UITGEVER = "Uitgever";

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

    @OneToMany(mappedBy = "bordspel")
    private List<Review> reviewList;

    @OneToMany(mappedBy = "bordspel")
    private List<Besteld> besteldList;

    @OneToMany(mappedBy = "categorie")
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
