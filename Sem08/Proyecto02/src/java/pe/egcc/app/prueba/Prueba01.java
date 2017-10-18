package pe.egcc.app.prueba;


import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pe.egcc.app.service.CuentaService;

public class Prueba01 {
  
  public static void main(String[] args) {

    // Instanciando el contexto
    String contexto = "/pe/egcc/app/prueba/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Accediendo a un bean
    CuentaService service;
    service = beanFactory.getBean(CuentaService.class);
    
    // Probando el bean
    List<Map<String,Object>> lista;
    lista = service.conMovimientos("00100001");
    
    
    for (Map<String, Object> r : lista) {
      System.out.println( r.get("movinumero") + " - " 
        + r.get("tiponombre") + " - " 
        + r.get("moviimporte") );
    }
    
  }
  
}
