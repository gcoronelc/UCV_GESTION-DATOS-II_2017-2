
package com.manosenelcodigo.modelos;

public class Rol {
    private int IDRol;
    private String Nombre;

    public Rol() {
    }

    public Rol(String Nombre) {
        this.Nombre = Nombre;
    }

    public Rol(int IDRol, String Nombre) {
        this.IDRol = IDRol;
        this.Nombre = Nombre;
    }

    public int getIDRol() {
        return IDRol;
    }

    public void setIDRol(int IDRol) {
        this.IDRol = IDRol;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
}
