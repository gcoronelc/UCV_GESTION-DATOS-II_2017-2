package pe.egcc.app.service;

import java.util.List;
import java.util.Map;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import pe.egcc.app.model.Obligacion;

@Service
public class ColegioService extends AbstractDBSupport {

  @Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = Exception.class)
  public Obligacion generarCuotaIngreso(Integer periodo, Integer estudiante, Integer empleado) {

    String sql = "select count(*) cont from obligacion "
            + "where estudiante = ? and tobligacion = 1";
    Integer cont = jdbcTemplate.queryForObject(sql, new Object[]{estudiante}, Integer.class);

    if (cont > 0) {
      throw new RuntimeException("El estudiante ya tiene cuota de ingreso.");
    }

    sql = "select ingreso from periodo where periodo = ?";
    Double importe = jdbcTemplate.queryForObject(sql, new Object[]{periodo}, Double.class);

    String fecha = periodo + "0201";

    sql = "insert into obligacion(importe,fecven,estudiante, "
            + "matricula,tobligacion,audempleado,audfecha) "
            + "values(?,EOMONTH(?),?,null,1,?,getdate())";
    
    Object[] parm = {importe, fecha, estudiante, empleado};

    jdbcTemplate.update(sql, parm);
    
    sql = "select IDENT_CURRENT('obligacion') id";
    Integer obligacion = jdbcTemplate.queryForObject(sql, Integer.class);
    
    Obligacion bean = new Obligacion();
    bean.setObligacion(obligacion);
    bean.setImporte(importe);
    bean.setEstudiante(estudiante);
    
    return bean;
    
  }
  
  @Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = Exception.class)
  public Obligacion registrarMatricula(Integer seccion, Integer estudiante, Integer empleado){
 
    Obligacion bean = new Obligacion();
   
    try{
      String sql = "select count(1) cont from obligacion "
              + "where estudiante = ? and tobligacion = 1";
      Integer cont = jdbcTemplate.queryForObject(sql, new Object[]{estudiante}, Integer.class);
      if (cont == 0) {
        throw new RuntimeException("El estudiante no registra pago de cuota de ingreso.");
      }

      sql = "select count(1) cont from matricula "
              + "where seccion = ? and estudiante = ?";
      cont = jdbcTemplate.queryForObject(sql, Integer.class, seccion, estudiante);
      if (cont > 0) {
        throw new RuntimeException("El estudiante ya esta matriculado en la seccion " + seccion + ".");
      }

      sql = "select (vacantes - matriculados) cont from seccion with (updlock, holdlock) "
              + "where seccion = ? ";
      cont = jdbcTemplate.queryForObject(sql, Integer.class, seccion);
      if (cont <= 0) {
        throw new RuntimeException("No hay vacantes en la seccion " + seccion + ".");
      }
      
      sql = "update seccion set matriculados = matriculados + 1 "
              + "where seccion = ?";
      cont = jdbcTemplate.update(sql, seccion);
      
      
      
      
      
    } catch(EmptyResultDataAccessException e){
      throw new RuntimeException("Error, datos incorrectos.");
    }
    
    
    return bean;
  }

}
