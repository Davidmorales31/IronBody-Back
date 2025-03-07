package com.titaniclift.titanicliftweb.model;

import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "usuariosRegistrados", uniqueConstraints = {@UniqueConstraint(columnNames = {"username"})})
@Entity
public class Usuarios {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String password;
}
