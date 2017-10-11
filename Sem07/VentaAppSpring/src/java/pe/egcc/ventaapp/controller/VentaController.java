package pe.egcc.ventaapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pe.egcc.ventaapp.model.VentaModel;
import pe.egcc.ventaapp.service.VentaService;

@Controller
public class VentaController {
  
  @Autowired
  private VentaService service;
  
  @RequestMapping(value = "index.htm", method = RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  @RequestMapping(value = "venta.htm", method = RequestMethod.POST)
  public String procesarVenta(
         @ModelAttribute VentaModel ventaModel,
          Model model
    ){
    
    // Procesar
    ventaModel = service.procesarVenta(ventaModel);
    
    // Preparar el envio
    model.addAttribute("bean",ventaModel);
    
    return "index";
  }
  
  
}
