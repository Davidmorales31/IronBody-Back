package com.titaniclift.titanicliftweb.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.DayOfWeek;

@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "horarios")
public class Horarios {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    private DayOfWeek diaSemana;

    @Column(name = "hora_inicio")
    private String horaInicio;

    @Column(name = "hora_finalizacion")
    private String horaFinalizacion;

    @ManyToOne
    @JoinColumn(name = "clase_id", referencedColumnName = "id")
    private clases clase;

    @Column(name = "capacidad_maxima")
    private int capacidadMaxima;
}
