package com.Grupo5.MCSSillones.daos;

import com.Grupo5.MCSSillones.models.Sillon;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SillonRepository extends JpaRepository<Sillon,Integer> {

    Iterable<Sillon> findByEstado(boolean estado);
}