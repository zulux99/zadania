package com.example.projekt;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KsiazkaRepo extends JpaRepository<Ksiazka, Integer> {
    List<Ksiazka> findAllByAutor(String wyszukaj);
}