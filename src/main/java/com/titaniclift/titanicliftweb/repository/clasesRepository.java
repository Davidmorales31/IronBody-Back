package com.titaniclift.titanicliftweb.repository;

import com.titaniclift.titanicliftweb.model.Usuarios;
import com.titaniclift.titanicliftweb.model.clases;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface clasesRepository extends JpaRepository<clases, Long> {

}