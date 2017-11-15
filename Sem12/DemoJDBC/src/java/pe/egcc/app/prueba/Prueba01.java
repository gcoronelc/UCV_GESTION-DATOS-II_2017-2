package pe.egcc.app.prueba;


import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pe.egcc.app.service.ColegioService;

public class Prueba01 {
  
  public static void main(String[] args) {

    // Instanciando el contexto
    String contexto = "/pe/egcc/app/prueba/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Accediendo a un bean
    ColegioService service;
    service = beanFactory.getBean(ColegioService.class);
    
    // Probando el bean
    
    
    
    
  }
  
}
