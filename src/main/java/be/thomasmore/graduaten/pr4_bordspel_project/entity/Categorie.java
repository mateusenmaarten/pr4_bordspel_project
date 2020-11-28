package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="Categorie",schema = "java")
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String CategorieNaam;

    //@Column(name = "CategorieID")
    private long CategorieID;

    @OneToMany
    private List<BordspelCategorie> BordspelCategorieList;

    public Categorie() {

    }

    public long getCategorieID() {
        return CategorieID;
    }

    public void setCategorieID(long categorieID) {
        this.CategorieID = categorieID;
    }

    public List<BordspelCategorie> getBordspelCategorieList() {
        return BordspelCategorieList;
    }

    public void setBordspelCategorieList(List<BordspelCategorie> bordspelCategorieList) {
        this.BordspelCategorieList = bordspelCategorieList;
    }


    public String getCategorieNaam() {
        return CategorieNaam;
    }

    public void setCategorieNaam(String categorieNaam) {
        categorieNaam = categorieNaam;
    }
}
