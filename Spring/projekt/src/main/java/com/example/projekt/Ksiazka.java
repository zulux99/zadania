package com.example.projekt;

import javax.persistence.*;

@Entity
@Table(name="Ksiazka")
public class Ksiazka {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String tytul;
    private String autor;
    private Integer rok_wydania;
    @ManyToOne
    private Dzial dzial;
    public Ksiazka(String tytul, String autor, Integer rok_wydania) {
        this.tytul = tytul;
        this.autor = autor;
        this.rok_wydania = rok_wydania;
    }

    public Ksiazka(Integer id, String tytul, String autor, Integer rok_wydania) {
        this.id = id;
        this.tytul = tytul;
        this.autor = autor;
        this.rok_wydania = rok_wydania;
    }
    public Ksiazka() {
    }
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public String getTytul() { return tytul; }
    public void setTytul(String tytul) { this.tytul = tytul; }
    public String getAutor() { return autor; }
    public void setAutor(String autor) { this.autor = autor; }
    public Integer getRok_wydania() { return rok_wydania; }
    public void setRok_wydania(Integer rok_wydania) { this.rok_wydania = rok_wydania; }
}
