package com.titaniclift.titanicliftweb.model;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "inscripcioness")
public class Inscripcion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String usuario;
    private int horario;

    // Aquí podrías añadir más campos si es necesario, como fecha de inscripción, etc.
}
