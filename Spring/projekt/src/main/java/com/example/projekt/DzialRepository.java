package com.example.projekt;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DzialRepository extends JpaRepository<Dzial, Integer> {

}