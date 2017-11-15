package pe.egcc.app.service;

import java.util.List;
import java.util.Map;
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

}
