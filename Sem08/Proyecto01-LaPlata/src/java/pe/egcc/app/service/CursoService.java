package pe.egcc.app.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

@Service
public class CursoService extends AbstractDBSupport{
  
  public List<Map<String,Object>> conMovimientos(String cuenta){
    // Preparando el query
    String sql = "select   *  "
            + "from V_RESUMEN_CURSO "
            + "where ciclo = ? ";
    // Ejecutando el query
    List<Map<String,Object>> lista;
    lista = jdbcTemplate.queryForList(sql, cuenta);
    // Retornar resultado
    return lista;
  }
  
  
}
