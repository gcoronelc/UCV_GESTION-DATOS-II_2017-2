
package com.manosenelcodigo.modelos;

public class Pago {
    private int IDPago;
    private int IDObligacion;
    private String FechPago;
    private String Importe;
    private String Mora;
    private String Total;
    private String AudEmpleado;
    private String AudFecha;

    public Pago() {
    }

    public Pago(int IDObligacion, String FechPago, String Importe, String Mora, String Total, String AudEmpleado, String AudFecha) {
        this.IDObligacion = IDObligacion;
        this.FechPago = FechPago;
        this.Importe = Importe;
        this.Mora = Mora;
        this.Total = Total;
        this.AudEmpleado = AudEmpleado;
        this.AudFecha = AudFecha;
    }

    public Pago(int IDPago, int IDObligacion, String FechPago, String Importe, String Mora, String Total, String AudEmpleado, String AudFecha) {
        this.IDPago = IDPago;
        this.IDObligacion = IDObligacion;
        this.FechPago = FechPago;
        this.Importe = Importe;
        this.Mora = Mora;
        this.Total = Total;
        this.AudEmpleado = AudEmpleado;
        this.AudFecha = AudFecha;
    }

    public int getIDPago() {
        return IDPago;
    }

    public void setIDPago(int IDPago) {
        this.IDPago = IDPago;
    }

    public int getIDObligacion() {
        return IDObligacion;
    }

    public void setIDObligacion(int IDObligacion) {
        this.IDObligacion = IDObligacion;
    }

    public String getFechPago() {
        return FechPago;
    }

    public void setFechPago(String FechPago) {
        this.FechPago = FechPago;
    }

    public String getImporte() {
        return Importe;
    }

    public void setImporte(String Importe) {
        this.Importe = Importe;
    }

    public String getMora() {
        return Mora;
    }

    public void setMora(String Mora) {
        this.Mora = Mora;
    }

    public String getTotal() {
        return Total;
    }

    public void setTotal(String Total) {
        this.Total = Total;
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
