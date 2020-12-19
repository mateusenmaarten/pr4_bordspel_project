package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.util.List;

@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String categorieNaam;

    @OneToMany
    private List<BordspelCategorie> bordspelCategorieList;

    public Categorie() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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
