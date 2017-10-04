package pe.egcc.ventaapp.prueba;

import pe.egcc.ventaapp.model.VentaModel;
import pe.egcc.ventaapp.service.VentaService;

public class Prueba01 {
  
  public static void main(String[] args) {
    
    // Datos
    VentaModel bean = new VentaModel(568.56, 8);
    
    // Proceso
    VentaService service = new VentaService();
    bean = service.procesarVenta(bean);
    
    // Reporte
    System.out.println("Importe: " + bean.getImporte());
    System.out.println("Impuesto: " + bean.getImpuesto());
    System.out.println("Total: " + bean.getTotal());
    
    
  }
}
