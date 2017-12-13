
package com.manosenelcodigo.modelos;

public class Estudiante {
    private int IDEstudiante;
    private String Nombres;
    private String Apellido_pate;
    private String Apellido_mate;
    private String Fecha_Nacimiento;
    private String Dni;
    private String Direccion;
    private String Telefono;
    private String Email;

    public Estudiante() {
    }

    public Estudiante(String Nombres, String Apellido_pate, String Apellido_mate, String Fecha_Nacimiento, String Dni, String Direccion, String Telefono, String Email) {
        this.Nombres = Nombres;
        this.Apellido_pate = Apellido_pate;
        this.Apellido_mate = Apellido_mate;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Dni = Dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Email = Email;
    }

    public Estudiante(int IDEstudiante, String Nombres, String Apellido_pate, String Apellido_mate, String Fecha_Nacimiento, String Dni, String Direccion, String Telefono, String Email) {
        this.IDEstudiante = IDEstudiante;
        this.Nombres = Nombres;
        this.Apellido_pate = Apellido_pate;
        this.Apellido_mate = Apellido_mate;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Dni = Dni;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Email = Email;
    }

    public int getIDEstudiante() {
        return IDEstudiante;
    }

    public void setIDEstudiante(int IDEstudiante) {
        this.IDEstudiante = IDEstudiante;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellido_pate() {
        return Apellido_pate;
    }

    public void setApellido_pate(String Apellido_pate) {
        this.Apellido_pate = Apellido_pate;
    }

    public String getApellido_mate() {
        return Apellido_mate;
    }

    public void setApellido_mate(String Apellido_mate) {
        this.Apellido_mate = Apellido_mate;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getDni() {
        return Dni;
    }

    public void setDni(String Dni) {
        this.Dni = Dni;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
}
