package com.manosenelcodigo.modelos;

public class Matricula {
    private int IDMatricula;
    private int IDSeccion;
    private int IDEstudiante;
    private String Fecha;
    private String Confirmada;
    private String Activa;
    private String OBS;
    private String AudEmpleado;
    private String AudFecha;

    public Matricula() {
    }

    public Matricula(int IDSeccion, int IDEstudiante, String Fecha, String Confirmada, String Activa, String OBS, String AudEmpleado, String AudFecha) {
        this.IDSeccion = IDSeccion;
        this.IDEstudiante = IDEstudiante;
        this.Fecha = Fecha;
        this.Confirmada = Confirmada;
        this.Activa = Activa;
        this.OBS = OBS;
        this.AudEmpleado = AudEmpleado;
        this.AudFecha = AudFecha;
    }

    public Matricula(int IDMatricula, int IDSeccion, int IDEstudiante, String Fecha, String Confirmada, String Activa, String OBS, String AudEmpleado, String AudFecha) {
        this.IDMatricula = IDMatricula;
        this.IDSeccion = IDSeccion;
        this.IDEstudiante = IDEstudiante;
        this.Fecha = Fecha;
        this.Confirmada = Confirmada;
        this.Activa = Activa;
        this.OBS = OBS;
        this.AudEmpleado = AudEmpleado;
        this.AudFecha = AudFecha;
    }

    public int getIDMatricula() {
        return IDMatricula;
    }

    public void setIDMatricula(int IDMatricula) {
        this.IDMatricula = IDMatricula;
    }

    public int getIDSeccion() {
        return IDSeccion;
    }

    public void setIDSeccion(int IDSeccion) {
        this.IDSeccion = IDSeccion;
    }

    public int getIDEstudiante() {
        return IDEstudiante;
    }

    public void setIDEstudiante(int IDEstudiante) {
        this.IDEstudiante = IDEstudiante;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getConfirmada() {
        return Confirmada;
    }

    public void setConfirmada(String Confirmada) {
        this.Confirmada = Confirmada;
    }

    public String getActiva() {
        return Activa;
    }

    public void setActiva(String Activa) {
        this.Activa = Activa;
    }

    public String getOBS() {
        return OBS;
    }

    public void setOBS(String OBS) {
        this.OBS = OBS;
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
