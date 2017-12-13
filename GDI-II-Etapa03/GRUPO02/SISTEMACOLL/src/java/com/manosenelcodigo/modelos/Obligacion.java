package com.manosenelcodigo.modelos;

public class Obligacion {
    private int IDObligacion;
    private int IDEstudiante;
    private int IDMatricula;
    private int IDTObligacion;
    private String Importe;
    private String FechaVen;
    private String AudEmpleado;
    private String AudFecha;

    public Obligacion() {
    }

    public Obligacion(int IDEstudiante, int IDMatricula, int IDTObligacion, String Importe, String FechaVen, String AudEmpleado, String AudFecha) {
        this.IDEstudiante = IDEstudiante;
        this.IDMatricula = IDMatricula;
        this.IDTObligacion = IDTObligacion;
        this.Importe = Importe;
        this.FechaVen = FechaVen;
        this.AudEmpleado = AudEmpleado;
        this.AudFecha = AudFecha;
    }

    public Obligacion(int IDObligacion, int IDEstudiante, int IDMatricula, int IDTObligacion, String Importe, String FechaVen, String AudEmpleado, String AudFecha) {
        this.IDObligacion = IDObligacion;
        this.IDEstudiante = IDEstudiante;
        this.IDMatricula = IDMatricula;
        this.IDTObligacion = IDTObligacion;
        this.Importe = Importe;
        this.FechaVen = FechaVen;
        this.AudEmpleado = AudEmpleado;
        this.AudFecha = AudFecha;
    }

    public int getIDObligacion() {
        return IDObligacion;
    }

    public void setIDObligacion(int IDObligacion) {
        this.IDObligacion = IDObligacion;
    }

    public int getIDEstudiante() {
        return IDEstudiante;
    }

    public void setIDEstudiante(int IDEstudiante) {
        this.IDEstudiante = IDEstudiante;
    }

    public int getIDMatricula() {
        return IDMatricula;
    }

    public void setIDMatricula(int IDMatricula) {
        this.IDMatricula = IDMatricula;
    }

    public int getIDTObligacion() {
        return IDTObligacion;
    }

    public void setIDTObligacion(int IDTObligacion) {
        this.IDTObligacion = IDTObligacion;
    }

    public String getImporte() {
        return Importe;
    }

    public void setImporte(String Importe) {
        this.Importe = Importe;
    }

    public String getFechaVen() {
        return FechaVen;
    }

    public void setFechaVen(String FechaVen) {
        this.FechaVen = FechaVen;
    }

    public String getAudEmpleado() {
        return AudEmpleado;
    }

    public void setAudEmpleado(String AudEmpleado) {
        this.AudEmpleado = AudEmpleado;
    }

    public String getAudFecha() {
        return AudFecha;
    }

    public void setAudFecha(String AudFecha) {
        this.AudFecha = AudFecha;
    }
    
}
