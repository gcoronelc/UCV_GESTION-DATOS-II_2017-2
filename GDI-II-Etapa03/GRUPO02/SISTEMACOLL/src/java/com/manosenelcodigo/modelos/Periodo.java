package com.manosenelcodigo.modelos;
public class Periodo {
    private int IDPeriodo;
    private String Nom_periodo;
    private String Matricula;
    private String Pension;
    private String Estado;

    public Periodo() {
    }

    public Periodo(String Nom_periodo, String Matricula, String Pension, String Estado) {
        this.Nom_periodo = Nom_periodo;
        this.Matricula = Matricula;
        this.Pension = Pension;
        this.Estado = Estado;
    }

    public Periodo(int IDPeriodo, String Nom_periodo, String Matricula, String Pension, String Estado) {
        this.IDPeriodo = IDPeriodo;
        this.Nom_periodo = Nom_periodo;
        this.Matricula = Matricula;
        this.Pension = Pension;
        this.Estado = Estado;
    }

    public int getIDPeriodo() {
        return IDPeriodo;
    }

    public void setIDPeriodo(int IDPeriodo) {
        this.IDPeriodo = IDPeriodo;
    }

    public String getNom_periodo() {
        return Nom_periodo;
    }

    public void setNom_periodo(String Nom_periodo) {
        this.Nom_periodo = Nom_periodo;
    }

    public String getMatricula() {
        return Matricula;
    }

    public void setMatricula(String Matricula) {
        this.Matricula = Matricula;
    }

    public String getPension() {
        return Pension;
    }

    public void setPension(String Pension) {
        this.Pension = Pension;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
    
}
