
package com.manosenelcodigo.modelos;

public class Tobligacion {
  private int IDTObligacion;
  private String Nombre;
  private String Mora;

    public Tobligacion() {
    }

    public Tobligacion(String Nombre, String Mora) {
        this.Nombre = Nombre;
        this.Mora = Mora;
    }

    public Tobligacion(int IDTObligacion, String Nombre, String Mora) {
        this.IDTObligacion = IDTObligacion;
        this.Nombre = Nombre;
        this.Mora = Mora;
    }

    public int getIDTObligacion() {
        return IDTObligacion;
    }

    public void setIDTObligacion(int IDTObligacion) {
        this.IDTObligacion = IDTObligacion;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getMora() {
        return Mora;
    }

    public void setMora(String Mora) {
        this.Mora = Mora;
    }
  
  
}
