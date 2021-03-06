package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.util.List;

@Entity(name = "TypeBesteld")
@Table(name= "Type", schema = "java")
public class TypeBesteld {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String beschrijving;


    @OneToMany(mappedBy = "typeBesteld")
    private List<Besteld> besteldList;

    public TypeBesteld() {
    }

    public List<Besteld> getBesteldList() {
        return besteldList;
    }

    public void setBesteldList(List<Besteld> besteldList) {
        this.besteldList = besteldList;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBeschrijving() {
        return beschrijving;
    }

    public void setBeschrijving(String beschrijving) {
        this.beschrijving = beschrijving;
    }
}
