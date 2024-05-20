package com.titaniclift.titanicliftweb.repository;

import com.titaniclift.titanicliftweb.model.Horarios;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface horariosReposiroty extends JpaRepository<Horarios, Long> {

}