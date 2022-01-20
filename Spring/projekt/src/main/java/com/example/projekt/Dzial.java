package com.example.projekt;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="Dzial")
public class Dzial {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String nazwa;
    @OneToMany
    private List<Ksiazka> ksiazki;
    public Dzial(String nazwa) {
        this.nazwa = nazwa;
        this.ksiazki = new ArrayList<>();
    }
    public void wypelniamyKolekcjeUlicami(Ksiazka ksiazka) {
        ksiazki.add(ksiazka);
    }
    public Dzial() {
    }
    public Integer getId() {
        return id;
    }
    public String getNazwa() {
        return nazwa;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }
}
