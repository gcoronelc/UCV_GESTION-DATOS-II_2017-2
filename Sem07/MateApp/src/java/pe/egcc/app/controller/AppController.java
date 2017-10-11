package pe.egcc.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.egcc.app.service.MateService;

@Controller
public class AppController {

  @Autowired
  private MateService service;
  
  @RequestMapping(value = "index.htm", method = RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  @RequestMapping(value = "procesar.htm", method = RequestMethod.POST)
  public String procesar(@RequestParam("num") int n, Model model){
    
    // Proceso
    long fact = service.factorial(n);
    boolean pri = service.primo(n);
    int sum = service.sumatoria(n);
    
    // Preparar el envio
    model.addAttribute("num", n);
    model.addAttribute("factorial", fact);
    model.addAttribute("primo", pri);
    model.addAttribute("sumatoria", sum);
    
    return "index";
  }
  
  
}
