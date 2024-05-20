package com.titaniclift.titanicliftweb.repository;

import com.titaniclift.titanicliftweb.model.Horarios;
import com.titaniclift.titanicliftweb.model.Inscripcion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
    public interface inscripcionRepository extends JpaRepository<Inscripcion, Long> {

}