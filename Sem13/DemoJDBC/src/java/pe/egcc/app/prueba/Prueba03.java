package pe.egcc.app.prueba;


import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pe.egcc.app.model.Obligacion;
import pe.egcc.app.service.ColegioService;

public class Prueba03 {
  
  public static void main(String[] args) {

    // Instanciando el contexto
    String contexto = "/pe/egcc/app/prueba/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Accediendo a un bean
    ColegioService service;
    service = beanFactory.getBean(ColegioService.class);
    
    // Probando el bean
    Obligacion bean = service.registrarMatricula(1, 2, 1);
    
    // Reporte
    System.out.println("Obligacion: " + bean.getObligacion());
    System.out.println("Importe: " + bean.getImporte());
    
  }
  
}
