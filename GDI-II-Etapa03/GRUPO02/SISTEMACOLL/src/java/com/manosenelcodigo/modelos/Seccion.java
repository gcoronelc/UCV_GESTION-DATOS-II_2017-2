package com.manosenelcodigo.modelos;

public class Seccion {

    private int IDSeccion;
    private int IDPeriodo;
    private int IDGrado;
    private int IDEmpleado;
    private String Nom_seccion;
    private String Vacantes;
    private String Matriculados;

    public Seccion() {
    }

    public Seccion(int IDPeriodo, int IDGrado, int IDEmpleado, String Nom_seccion, String Vacantes, String Matriculados) {
        this.IDPeriodo = IDPeriodo;
        this.IDGrado = IDGrado;
        this.IDEmpleado = IDEmpleado;
        this.Nom_seccion = Nom_seccion;
        this.Vacantes = Vacantes;
        this.Matriculados = Matriculados;
    }

    public Seccion(int IDSeccion, int IDPeriodo, int IDGrado, int IDEmpleado, String Nom_seccion, String Vacantes, String Matriculados) {
        this.IDSeccion = IDSeccion;
        this.IDPeriodo = IDPeriodo;
        this.IDGrado = IDGrado;
        this.IDEmpleado = IDEmpleado;
        this.Nom_seccion = Nom_seccion;
        this.Vacantes = Vacantes;
        this.Matriculados = Matriculados;
    }

    public int getIDSeccion() {
        return IDSeccion;
    }

    public void setIDSeccion(int IDSeccion) {
        this.IDSeccion = IDSeccion;
    }

    public int getIDPeriodo() {
        return IDPeriodo;
    }

    public void setIDPeriodo(int IDPeriodo) {
        this.IDPeriodo = IDPeriodo;
    }

    public int getIDGrado() {
        return IDGrado;
    }

    public void setIDGrado(int IDGrado) {
        this.IDGrado = IDGrado;
    }

    public int getIDEmpleado() {
        return IDEmpleado;
    }

    public void setIDEmpleado(int IDEmpleado) {
        this.IDEmpleado = IDEmpleado;
    }

    public String getNom_seccion() {
        return Nom_seccion;
    }

    public void setNom_seccion(String Nom_seccion) {
        this.Nom_seccion = Nom_seccion;
    }

    public String getVacantes() {
        return Vacantes;
    }

    public void setVacantes(String Vacantes) {
        this.Vacantes = Vacantes;
    }

    public String getMatriculados() {
        return Matriculados;
    }

    public void setMatriculados(String Matriculados) {
        this.Matriculados = Matriculados;
    }

}
