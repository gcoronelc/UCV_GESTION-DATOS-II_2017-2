package pe.egcc.ventaapp.service;

import org.springframework.stereotype.Service;
import pe.egcc.ventaapp.model.VentaModel;

@Service
public class VentaService {
  
  public VentaModel procesarVenta(VentaModel bean){
    // Variables
    double importe, impuesto, total;
    // Proceso
    total = bean.getPrecio() * bean.getCant();
    importe = total / 1.18;
    impuesto = total - importe;
    // Datos de Salida
    bean.setImporte(importe);
    bean.setImpuesto(impuesto);
    bean.setTotal(total);
    // Retorno
    return bean;
  }
  
}
