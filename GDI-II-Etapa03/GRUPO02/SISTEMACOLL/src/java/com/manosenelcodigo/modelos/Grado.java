
package com.manosenelcodigo.modelos;


public class Grado {
    private int IDGrado;
    private String Nombre;

    public Grado() {
    }

    public Grado(String Nombre) {
        this.Nombre = Nombre;
    }

    public Grado(int IDGrado, String Nombre) {
        this.IDGrado = IDGrado;
        this.Nombre = Nombre;
    }

    public int getIDGrado() {
        return IDGrado;
    }

    public void setIDGrado(int IDGrado) {
        this.IDGrado = IDGrado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }  
}
