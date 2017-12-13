
package com.manosenelcodigo.modelos;


public class Nivel {
    private int IDNivel;
    private String Nombre;

    public Nivel() {
    }

    public Nivel(String Nombre) {
        this.Nombre = Nombre;
    }

    public Nivel(int IDNivel, String Nombre) {
        this.IDNivel = IDNivel;
        this.Nombre = Nombre;
    }

    public int getIDNivel() {
        return IDNivel;
    }

    public void setIDNivel(int IDNivel) {
        this.IDNivel = IDNivel;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }   
}
