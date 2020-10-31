package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
public class BordspelCategorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long bordspelCategorieID;

    @ManyToOne
    private Categorie categorie;
    @ManyToOne
    private Bordspel bordspel;

    public BordspelCategorie() {
    }

    public long getBordspelCategorieID() {
        return bordspelCategorieID;
    }

    public void setBordspelCategorieID(long bordspelCategorieID) {
        this.bordspelCategorieID = bordspelCategorieID;
    }

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
