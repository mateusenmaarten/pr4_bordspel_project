package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;

@Entity
@Table(name="BordspelCategorie",schema = "java")
public class BordspelCategorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long BordspelCategorieID;

    @ManyToOne
    private Categorie Categorie;
    @ManyToOne
    private Bordspel Bordspel;

    public BordspelCategorie() {
    }

    public long getBordspelCategorieID() {
        return BordspelCategorieID;
    }

    public void setBordspelCategorieID(long bordspelCategorieID) {
        this.BordspelCategorieID = bordspelCategorieID;
    }

    public Categorie getCategorie() {
        return Categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.Categorie = categorie;
    }

    public Bordspel getBordspel() {
        return Bordspel;
    }

    public void setBordspel(Bordspel bordspel) {
        this.Bordspel = bordspel;
    }
}
