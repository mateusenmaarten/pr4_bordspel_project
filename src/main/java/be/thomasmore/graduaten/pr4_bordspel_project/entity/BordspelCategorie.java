package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
@Table(name="BordspelCategorie", schema = "java")
public class BordspelCategorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;

    @ManyToOne
    private Categorie categorie;
    @ManyToOne
    private Bordspel bordspel;

    public BordspelCategorie() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
    @Column(name="categorie")
    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }

    public Bordspel getBordspel() {
        return bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.bordspel = bordspel;
    }
}
