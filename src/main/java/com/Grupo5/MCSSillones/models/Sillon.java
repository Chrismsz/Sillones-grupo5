package com.Grupo5.MCSSillones.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sillon {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private boolean estado;

    public Sillon(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
}