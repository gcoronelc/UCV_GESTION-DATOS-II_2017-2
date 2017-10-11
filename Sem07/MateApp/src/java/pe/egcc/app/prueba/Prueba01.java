package pe.egcc.app.prueba;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pe.egcc.app.service.MateService;

public class Prueba01 {

  public static void main(String[] args) {
    
    // Dato
    int n = 7;
    
    // Instanciar contexto
    String contexto = "/pe/egcc/app/prueba/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Acceso al bean
    MateService service;
    service = beanFactory.getBean(MateService.class);
    
    // Proceso
    long fact = service.factorial(n);
    boolean pri = service.primo(n);
    int su = service.sumatoria(n);
    
    // Reporte
    System.out.println("n: " + n);
    System.out.println("Factorial: " + fact);
    System.out.println("Es Primo?: " + pri);
    System.out.println("Sumatoria: " + su);
    
  }
  
}
