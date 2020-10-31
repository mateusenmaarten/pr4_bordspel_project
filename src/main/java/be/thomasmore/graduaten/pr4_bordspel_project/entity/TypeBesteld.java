package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.util.List;

@Entity
public class TypeBesteld {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long typeBesteldID;
    private String beschrijving;
    @OneToMany
    private List<Besteld> besteldList;
    public TypeBesteld() {
    }

    public List<Besteld> getBesteldList() {
        return besteldList;
    }

    public void setBesteldList(List<Besteld> besteldList) {
        this.besteldList = besteldList;
    }

    public long getTypeBesteldID() {
        return typeBesteldID;
    }

    public void setTypeBesteldID(long typeBesteldID) {
        this.typeBesteldID = typeBesteldID;
    }

    public String getBeschrijving() {
        return beschrijving;
    }

    public void setBeschrijving(String beschrijving) {
        this.beschrijving = beschrijving;
    }
}
