package be.thomasmore.graduaten.pr4_bordspel_project.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="TypeBesteld",schema = "java")
public class TypeBesteld {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long TypeBesteldID;
    private String Beschrijving;
    @OneToMany
    private List<Besteld> BesteldList;
    public TypeBesteld() {
    }

    public List<Besteld> getBesteldList() {
        return BesteldList;
    }

    public void setBesteldList(List<Besteld> besteldList) {
        this.BesteldList = besteldList;
    }

    public long getTypeBesteldID() {
        return TypeBesteldID;
    }

    public void setTypeBesteldID(long typeBesteldID) {
        this.TypeBesteldID = typeBesteldID;
    }

    public String getBeschrijving() {
        return Beschrijving;
    }

    public void setBeschrijving(String beschrijving) {
        this.Beschrijving = beschrijving;
    }
}
