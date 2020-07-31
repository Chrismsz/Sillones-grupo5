package com.Grupo5.MCSSillones.daos;

import com.Grupo5.MCSSillones.models.Sillon;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface SillonRepository extends CrudRepository<Sillon,Integer> {

    Iterable<Sillon> findByEstado(boolean estado);
}