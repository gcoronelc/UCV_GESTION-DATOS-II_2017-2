package pe.egcc.app.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.egcc.app.service.ColegioService;

@Controller
public class AppController {

  @Autowired
  private ColegioService colegioService;
  
  @RequestMapping(value = "index.htm", method = RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  
  
  
  
  
}
