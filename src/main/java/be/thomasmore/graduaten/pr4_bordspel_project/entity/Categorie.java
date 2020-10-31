package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import org.w3c.dom.Text;

import javax.persistence.*;
import java.util.List;

@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String categorieNaam;

    //@Column(name = "CategorieID")
    private long categorieID;

    @OneToMany
    private List<BordspelCategorie> bordspelCategorieList;

    public Categorie() {

    }

    public long getCategorieID() {
        return categorieID;
    }

    public void setCategorieID(long categorieID) {
        this.categorieID = categorieID;
    }

    public List<BordspelCategorie> getBordspelCategorieList() {
        return bordspelCategorieList;
    }

    public void setBordspelCategorieList(List<BordspelCategorie> bordspelCategorieList) {
        this.bordspelCategorieList = bordspelCategorieList;
    }


    public String getCategorieNaam() {
        return categorieNaam;
    }

    public void setCategorieNaam(String categorieNaam) {
        categorieNaam = categorieNaam;
    }
}
