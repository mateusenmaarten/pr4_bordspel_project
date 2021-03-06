package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
@Table(name="Stock", schema = "java")
public class Stock {

    public static final String NAME = "stock";
    public static final String AANTALVERKOOP = "Aantal voor verkoop";
    public static final String AANTALVERHUUR = "Aantal voor verhuur";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int aantalVerkoop;
    private int aantalVerhuur;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "bordspel_id", referencedColumnName = "id")
    private Bordspel bordspel;

    public Stock() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getAantalVerkoop() {
        return aantalVerkoop;
    }

    public void setAantalVerkoop(int aantalVerkoop) {
        this.aantalVerkoop = aantalVerkoop;
    }

    public int getAantalVerhuur() {
        return aantalVerhuur;
    }

    public void setAantalVerhuur(int aantalVerhuur) {
        this.aantalVerhuur = aantalVerhuur;
    }

    public Bordspel getBordspel() {
        return bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.bordspel = bordspel;
    }
}
