
package com.manosenelcodigo.modelos;

public class Empleado {
    private int IDEmpleado;
    private String Nombre;
    private String Apellido;
    private String Dni;
    private String Telefono;
    private String Direccion;
    private String Email;
    private String AudEmpleado;

    public Empleado() {
    }

    public Empleado(String Nombre, String Apellido, String Dni, String Telefono, String Direccion, String Email, String AudEmpleado) {
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Dni = Dni;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Email = Email;
        this.AudEmpleado = AudEmpleado;
    }

    public Empleado(int IDEmpleado, String Nombre, String Apellido, String Dni, String Telefono, String Direccion, String Email, String AudEmpleado) {
        this.IDEmpleado = IDEmpleado;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Dni = Dni;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Email = Email;
        this.AudEmpleado = AudEmpleado;
    }

    public int getIDEmpleado() {
        return IDEmpleado;
    }

    public void setIDEmpleado(int IDEmpleado) {
        this.IDEmpleado = IDEmpleado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getDni() {
        return Dni;
    }

    public void setDni(String Dni) {
        this.Dni = Dni;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAudEmpleado() {
        return AudEmpleado;
    }

    public void setAudEmpleado(String AudEmpleado) {
        this.AudEmpleado = AudEmpleado;
    }
    
}
